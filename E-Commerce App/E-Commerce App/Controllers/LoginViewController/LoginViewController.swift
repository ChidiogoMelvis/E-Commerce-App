//
//  LoginViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 10/07/2022.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController, UITextFieldDelegate {
    // MARK: - Properties of the pagesviewcontrollers
    lazy var loginWelcomeLabel: UILabel = {
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
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.numberOfLines = 0
        label.text = "Login to your accout"
        label.font = customFont(size: 16, font: .MontserratRegular)
        label.textAlignment = .center
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var loginEmailTextField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.tintColor = UIColor(named: "white")
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(named: "darkgreen")
        textField.layer.borderWidth = 1
        textField.font = customFont(size: 16, font: .MontserratRegular)
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        textField.layer.cornerRadius = 24
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.delegate = self
        textField.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    lazy var loginPasswordTxtField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = customFont(size: 16, font: .MontserratRegular)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        textField.isSecureTextEntry = true
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.layer.cornerRadius = 24
        textField.delegate = self
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "white")
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor(named: "green"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(loginBtnPressed), for: .touchUpInside)
        return button
    }()
    lazy var forgotButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkgreen")
        button.setTitle("Forgot your password", for: .normal)
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        button.titleLabel?.font = customFont(size: 16, font: .MontserratRegular)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var dontHaveAcctLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.numberOfLines = 0
        label.text = "Don't have an account ?"
        label.font = customFont(size: 16, font: .MontserratRegular)
        label.textAlignment = .center
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var signupButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkgreen")
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.font = customFont(size: 16, font: .MontserratBold)
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signupBtnPressed), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "darkgreen")
        setupConstraint()
    }
    
    @objc func signupBtnPressed() {
        let viewController = SignupViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
    }
    @objc func loginBtnPressed() {
        if self.loginEmailTextField.text == "" || self.loginPasswordTxtField.text == "" {
            
            //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
            
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        } else {
            
            Auth.auth().signIn(withEmail: self.loginEmailTextField.text!, password: self.loginPasswordTxtField.text!) { (user, error) in
                
                if error == nil {
                    
                    //Print into the console if successfully logged in
                    print("You have successfully logged in")
                    
                    //Go to the HomeViewController if the login is sucessful
                    let nextScreen = TabBarViewController()
                    nextScreen.modalPresentationStyle = .fullScreen
                    self.present(nextScreen, animated: true, completion: nil)
                } else {
                    //Tells the user that there is an error and then gets firebase to tell them the error
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    // MARK: The constraints 
    func setupConstraint() {
        let subviews = [loginWelcomeLabel, loginLabel, loginEmailTextField, loginPasswordTxtField, loginButton, forgotButton, dontHaveAcctLabel, signupButton]
        for subview in subviews {
            view.addSubview(subview)
        }
        NSLayoutConstraint.activate([
            loginWelcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 173),
            loginWelcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loginLabel.topAnchor.constraint(equalTo: loginWelcomeLabel.bottomAnchor, constant: 66),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loginEmailTextField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 45),
            loginEmailTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginEmailTextField.heightAnchor.constraint(equalToConstant: 48),
            loginEmailTextField.widthAnchor.constraint(equalToConstant: 311),
            
            loginPasswordTxtField.topAnchor.constraint(equalTo: loginEmailTextField.bottomAnchor, constant: 16),
            loginPasswordTxtField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginPasswordTxtField.heightAnchor.constraint(equalToConstant: 48),
            loginPasswordTxtField.widthAnchor.constraint(equalToConstant: 311),
            
            loginButton.topAnchor.constraint(equalTo: loginPasswordTxtField.bottomAnchor, constant: 38),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            loginButton.widthAnchor.constraint(equalToConstant: 311),
            
            forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 32),
            forgotButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            dontHaveAcctLabel.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 45),
            dontHaveAcctLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 68),
            
            signupButton.topAnchor.constraint(equalTo: forgotButton.bottomAnchor, constant: 39),
            signupButton.leadingAnchor.constraint(equalTo: dontHaveAcctLabel.trailingAnchor, constant: 2),
        ])
    }
}

extension LoginViewController {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loginEmailTextField.resignFirstResponder()
        loginPasswordTxtField.resignFirstResponder()
        return true
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
}
