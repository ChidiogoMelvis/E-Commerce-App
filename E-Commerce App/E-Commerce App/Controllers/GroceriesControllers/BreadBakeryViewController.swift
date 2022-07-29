//
//  BreadBakeryViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 26/07/2022.
//

import UIKit

class BreadBakeryViewController: UIViewController {
    lazy var breadBakeryView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(breadBakeryTitleLabel)
        return view
    }()
    
    lazy var breadBakeryTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Bread & Bakery"
        message.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        message.translatesAutoresizingMaskIntoConstraints = false
        message.textColor = UIColor(named: "white")
        return message
    }()
    
    lazy var sortTextField: CustomTextField = {
        let textField = CustomTextField(title: "  Sort by")
        return textField
    }()
    
    lazy var locationTextField: CustomTextField = {
        let textField = CustomTextField(title: "Location")
        return textField
    }()
    
    lazy var categoryTextField: CustomTextField = {
        let textField = CustomTextField(title: "Category")
        return textField
    }()
    
    lazy var sortIcon: IconsImageView = {
        let icon = IconsImageView(image: "sort")
        
        return icon
    }()
    
    lazy var locationIcon: IconsImageView = {
        let icon = IconsImageView(image: "location")
        return icon
    }()
    
    lazy var categoryIcon: IconsImageView = {
        let icon = IconsImageView(image: "category")
        return icon
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "white")
        setupView()
    }
    func setupView() {
        let subviews = [breadBakeryView, sortTextField, sortIcon, locationTextField, locationIcon, categoryTextField, categoryIcon]
        for subview in subviews {
            view.addSubview(subview)
        }
        NSLayoutConstraint.activate([
            breadBakeryView.topAnchor.constraint(equalTo: view.topAnchor),
            breadBakeryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            breadBakeryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            breadBakeryView.heightAnchor.constraint(equalToConstant: 170),
            
            breadBakeryTitleLabel.centerXAnchor.constraint(equalTo: breadBakeryView.centerXAnchor),
            breadBakeryTitleLabel.centerYAnchor.constraint(equalTo: breadBakeryView.centerYAnchor),
            
            sortTextField.topAnchor.constraint(equalTo: breadBakeryTitleLabel.bottomAnchor, constant: 20),
            sortTextField.leadingAnchor.constraint(equalTo: breadBakeryView.leadingAnchor, constant: 20),
            sortTextField.heightAnchor.constraint(equalToConstant: 31),
            sortTextField.widthAnchor.constraint(equalToConstant: 112),
            
            sortIcon.topAnchor.constraint(equalTo: sortTextField.topAnchor, constant: 10),
            sortIcon.leadingAnchor.constraint(equalTo: sortTextField.leadingAnchor, constant: 15),
            
            locationTextField.leadingAnchor.constraint(equalTo: sortTextField.trailingAnchor, constant: 16),
            locationTextField.topAnchor.constraint(equalTo: breadBakeryTitleLabel.bottomAnchor, constant: 20),
            locationTextField.heightAnchor.constraint(equalToConstant: 31),
            locationTextField.widthAnchor.constraint(equalToConstant: 112),
            
            locationIcon.topAnchor.constraint(equalTo: locationTextField.topAnchor, constant: 10),
            locationIcon.leadingAnchor.constraint(equalTo: locationTextField.leadingAnchor, constant: 15),
            
            categoryTextField.leadingAnchor.constraint(equalTo: locationTextField.trailingAnchor, constant: 16),
            categoryTextField.topAnchor.constraint(equalTo: breadBakeryTitleLabel.bottomAnchor, constant: 20),
            categoryTextField.heightAnchor.constraint(equalToConstant: 31),
            categoryTextField.widthAnchor.constraint(equalToConstant: 112),
            
            categoryIcon.topAnchor.constraint(equalTo: categoryTextField.topAnchor, constant: 10),
            categoryIcon.leadingAnchor.constraint(equalTo: categoryTextField.leadingAnchor, constant: 15),
        ])
    }
}
