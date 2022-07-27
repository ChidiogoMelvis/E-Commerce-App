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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "white")
        setupView()
    }
    func setupView() {
        view.addSubview(breadBakeryTitleLabel)
        view.addSubview(breadBakeryView)
        
        NSLayoutConstraint.activate([
            breadBakeryView.topAnchor.constraint(equalTo: view.topAnchor),
            breadBakeryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            breadBakeryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            breadBakeryView.heightAnchor.constraint(equalToConstant: 170),
            
            breadBakeryTitleLabel.centerXAnchor.constraint(equalTo: breadBakeryView.centerXAnchor),
            breadBakeryTitleLabel.centerYAnchor.constraint(equalTo: breadBakeryView.centerYAnchor),
        ])
    }
}
