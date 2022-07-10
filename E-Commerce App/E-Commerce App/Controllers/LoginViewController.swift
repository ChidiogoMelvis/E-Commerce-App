//
//  LoginViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 10/07/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var welcomeLabel: UILabel = {
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
    
    lazy var emailMobileTxtField: UITextField = {
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
        textField.attributedPlaceholder = NSAttributedString(string: "Email/Mobile Number", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        return textField
    }()
    
    lazy var passwordTxtField: UITextField = {
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
        return button
    }()
    
    lazy var forgotButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkgreen")
        button.setTitle("Forgot your password", for: .normal)
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "darkgreen")
        setupConstraint()
    }
    
    // MARK: The constraints 
    func setupConstraint() {
        let subviews = [welcomeLabel, loginLabel, emailMobileTxtField, passwordTxtField, loginButton, forgotButton]
        for subview in subviews {
            view.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 173),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            loginLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 66),
            loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            emailMobileTxtField.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 45),
            emailMobileTxtField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailMobileTxtField.heightAnchor.constraint(equalToConstant: 48),
            emailMobileTxtField.widthAnchor.constraint(equalToConstant: 311),
            
            passwordTxtField.topAnchor.constraint(equalTo: emailMobileTxtField.bottomAnchor, constant: 16),
            passwordTxtField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTxtField.heightAnchor.constraint(equalToConstant: 48),
            passwordTxtField.widthAnchor.constraint(equalToConstant: 311),
            
            
            loginButton.topAnchor.constraint(equalTo: passwordTxtField.bottomAnchor, constant: 38),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 48),
            loginButton.widthAnchor.constraint(equalToConstant: 311),
            
            forgotButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 32),
            forgotButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}
