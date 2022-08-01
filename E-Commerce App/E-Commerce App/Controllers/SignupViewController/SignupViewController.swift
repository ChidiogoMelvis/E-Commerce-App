//
//  SignupViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 11/07/2022.
//

import UIKit
import Firebase
import FirebaseAuth

class SignupViewController: UIViewController, UITextFieldDelegate {
    // MARK: - Properties of the pagesviewcontrollers
    lazy var signupWelcomeLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.numberOfLines = 0
        label.text = "Welcome to tradly"
        label.font = customFont(size: 24, font: .MontserratMedium)
        label.textAlignment = .center
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var signupLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.numberOfLines = 0
        label.text = "Signup to your accout"
        label.font = customFont(size: 16, font: .MontserratRegular)
        label.textAlignment = .center
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var firstNameTxtField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = customFont(size: 16, font: .MontserratRegular)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        textField.layer.cornerRadius = 24
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.delegate = self
        textField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 311).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "First Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    lazy var lastNameTxtField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = customFont(size: 16, font: .MontserratRegular)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        textField.layer.cornerRadius = 24
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.delegate = self
        textField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 311).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "Last Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    lazy var emailAddressTxtField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = customFont(size: 16, font: .MontserratRegular)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        textField.layer.cornerRadius = 24
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.delegate = self
        textField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 311).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    lazy var signupPasswordTxtField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = customFont(size: 16, font: .MontserratRegular)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        textField.layer.cornerRadius = 24
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.delegate = self
        textField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 311).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    lazy var reenterSignupPasswordTxtField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = customFont(size: 16, font: .MontserratRegular)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        textField.layer.cornerRadius = 24
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.delegate = self
        textField.heightAnchor.constraint(equalToConstant: 48).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 311).isActive = true
        textField.attributedPlaceholder = NSAttributedString(string: "Re-enter Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [firstNameTxtField, lastNameTxtField, emailAddressTxtField, signupPasswordTxtField, reenterSignupPasswordTxtField])
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    lazy var createAccountButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "white")
        button.setTitle("Create", for: .normal)
        button.setTitleColor(UIColor(named: "green"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(handleSignup), for: .touchUpInside)
        return button
    }()
    lazy var haveAnAcctLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.numberOfLines = 0
        label.text = "Have an account ?"
        label.font = customFont(size: 16, font: .MontserratRegular)
        label.textAlignment = .center
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var signinButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkgreen")
        button.setTitle("Sign in", for: .normal)
        button.titleLabel?.font = customFont(size: 16, font: .MontserratBold)
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signinBtnPressed), for: .touchUpInside)
        return button
    }()
    @objc func signinBtnPressed() {
        let viewController = LoginViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        self.present(navigationController, animated: true, completion: nil)
    }
  //MARK: - This function checks the validity of the textfield, and calls the create user function at the end.
    @objc func handleSignup() {
        guard let email = emailAddressTxtField.text else { return }
        guard let password = signupPasswordTxtField.text else { return }
        guard let reEnterPassword = reenterSignupPasswordTxtField.text else { return }
        guard let firstName = firstNameTxtField.text else { return }
        guard let lastName = lastNameTxtField.text else { return }
        
        createUser(withEmail: email, password: password, reEnterPassword: reEnterPassword, firstName: firstName, lastName: lastName)
    }
// MARK: - This function creates user programmatically
    func createUser(withEmail email: String, password: String, reEnterPassword: String, firstName: String, lastName: String) {
        let details = ["email": email, "firstName": firstName, "lastName": lastName]
        Auth.auth().createUser(withEmail: emailAddressTxtField.text!, password: signupPasswordTxtField.text!) { result, error in
            if error != nil {
                let alertController = UIAlertController(title: "Error", message: "Please fill your details", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return
            }
            
            guard let uid = result?.user.uid else { return }
            
            Database.database().reference().child("users").child(uid).updateChildValues(details, withCompletionBlock: { (error, ref ) in
                if let error = error {
                    print("failed to update database values with error: ", error.localizedDescription  )
                    return
                }
                print("successfully signed user up")
                let viewController = TabBarViewController()
                let navigationController = UINavigationController(rootViewController: viewController)
                navigationController.modalPresentationStyle = .fullScreen
                self.present(navigationController, animated: true, completion: nil)
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "darkgreen")
        setupConstraint()
    }
    
    func setupConstraint() {
        let subviews = [signupWelcomeLabel, signupLabel, stackView, createAccountButton, haveAnAcctLabel, signinButton]
        for subview in subviews {
            view.addSubview(subview)
        }
        // MARK: The constraints 
        NSLayoutConstraint.activate([
            signupWelcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 173),
            signupWelcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            signupLabel.topAnchor.constraint(equalTo: signupWelcomeLabel.bottomAnchor, constant: 54),
            signupLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stackView.topAnchor.constraint(equalTo: signupLabel.bottomAnchor, constant: 25),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            createAccountButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 41),
            createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAccountButton.heightAnchor.constraint(equalToConstant: 48),
            createAccountButton.widthAnchor.constraint(equalToConstant: 311),
            
            haveAnAcctLabel.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: 38),
            haveAnAcctLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 68),
            
            signinButton.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: 32),
            signinButton.leadingAnchor.constraint(equalTo: haveAnAcctLabel.trailingAnchor, constant: 4),
        ])
    }
}

extension SignupViewController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstNameTxtField.resignFirstResponder()
        lastNameTxtField.resignFirstResponder()
        emailAddressTxtField.resignFirstResponder()
        signupPasswordTxtField.resignFirstResponder()
        reenterSignupPasswordTxtField.resignFirstResponder()
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
}
