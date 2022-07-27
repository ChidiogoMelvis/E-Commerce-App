//
//  BeveragesViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 20/07/2022.
//

import UIKit

class BeveragesViewController: UIViewController {
    
    lazy var beverageView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.addSubview(beverageTitleLabel)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var beverageTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Beverage"
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
        view.addSubview(beverageTitleLabel)
        view.addSubview(beverageView)
        
        NSLayoutConstraint.activate([
            beverageView.topAnchor.constraint(equalTo: view.topAnchor),
            beverageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            beverageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            beverageView.heightAnchor.constraint(equalToConstant: 170),
            
            beverageTitleLabel.centerXAnchor.constraint(equalTo: beverageView.centerXAnchor),
            beverageTitleLabel.centerYAnchor.constraint(equalTo: beverageView.centerYAnchor),
            
        ])
    }
}
