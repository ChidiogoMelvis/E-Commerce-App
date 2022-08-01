//
//  ProfileViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 13/07/2022.
//

import UIKit
import Firebase
import FirebaseAuth

class ProfileViewController: UIViewController {
    lazy var topView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height/2))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        let items = [profileTitleLabel, heartIcon, cartIcon, profileLogo, profileLabel, profileEmailAddress]
        for item in items {
            view.addSubview(item)
        }
        return view
    }()
    
    lazy var profileTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Profile"
        label.font = customFont(size: 24, font: .MontserratBold)
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var heartIcon: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "heart"), for: .normal)
        return button
    }()
    
    lazy var cartIcon: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "cart"), for: .normal)
        return button
    }()
    
    lazy var profileLogo: UIButton = {
        let logo = UIButton()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.setTitle("T", for: .normal)
        logo.titleLabel?.font = customFont(size: 40, font: .MontserratBold)
        logo.setTitleColor(UIColor(named: "white"), for: .normal)
        logo.layer.borderWidth = 1
        logo.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        logo.layer.cornerRadius = 32
        return logo
    }()
    
    lazy var profileLabel: UILabel = {
        let label = UILabel()
        label.text = "Tradly Team"
        label.font = customFont(size: 14, font: .MontserratSemiBold)
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var profileEmailAddress: UILabel = {
        let label = UILabel()
        label.text = "info@tradly.co"
        label.font = customFont(size: 12, font: .MontserratRegular)
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var editProfileLabel: CustomLabel = {
        let label = CustomLabel(label: "Edit Profile")
        return label
    }()
    
    lazy var languageAndCurrencyLabel: CustomLabel = {
        let label = CustomLabel(label: "Language & Currency")
        return label
    }()
    
    lazy var feedbackLabel: CustomLabel = {
        let label = CustomLabel(label: "Feedback")
        return label
    }()
    
    lazy var referLabel: CustomLabel = {
        let label = CustomLabel(label: "Refer a Friend")
        return label
    }()
    
    lazy var termsAndConditionLabel: CustomLabel = {
        let label = CustomLabel(label: "Terms & Conditions")
        return label
    }()
    
    lazy var logoutBtn: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logout", for: .normal)
        button.titleLabel?.font = customFont(size: 14, font: .MontserratMedium)
        button.setTitleColor(UIColor(named: "green"), for: .normal)
        button.contentHorizontalAlignment = .left
        button.addTarget(self, action: #selector(logoutBtnTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [editProfileLabel, languageAndCurrencyLabel, feedbackLabel, referLabel, termsAndConditionLabel, logoutBtn])
        stack.spacing = 22
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var containerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.clipsToBounds = true
        container.layer.masksToBounds = false
        container.layer.cornerRadius = 8
        container.backgroundColor = UIColor(named: "white")
        container.addSubview(stackView)
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "lightGray")
        setupViews()
    }
    
    func setupViews() {
        let subviews = [topView, containerView]
        for subview in subviews {
            view.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: view.frame.height/2),
            
            profileTitleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 56),
            profileTitleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 16),
            
            heartIcon.topAnchor.constraint(equalTo: topView.topAnchor, constant: 60),
            heartIcon.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -68),
            
            cartIcon.topAnchor.constraint(equalTo: topView.topAnchor, constant: 60),
            cartIcon.leadingAnchor.constraint(equalTo: heartIcon.trailingAnchor, constant: 22),
            
            profileLogo.topAnchor.constraint(equalTo: profileTitleLabel.bottomAnchor, constant: 47),
            profileLogo.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 26),
            profileLogo.heightAnchor.constraint(equalToConstant: 64),
            profileLogo.widthAnchor.constraint(equalToConstant: 64),
            
            profileLabel.leadingAnchor.constraint(equalTo: profileLogo.trailingAnchor, constant: 15),
            profileLabel.topAnchor.constraint(equalTo: profileTitleLabel.bottomAnchor, constant: 47),
            
            profileEmailAddress.leadingAnchor.constraint(equalTo: profileLogo.trailingAnchor, constant: 15),
            profileEmailAddress.topAnchor.constraint(equalTo: profileLabel.bottomAnchor, constant: 10),
            
            stackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 18),
            stackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 19),
            stackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -22),
            
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 266),
            containerView.widthAnchor.constraint(equalToConstant: 335),
        ])
    }
}
