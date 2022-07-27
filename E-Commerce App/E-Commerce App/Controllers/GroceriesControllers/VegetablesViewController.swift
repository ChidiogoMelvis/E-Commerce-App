//
//  VegetablesViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 26/07/2022.
//

import UIKit

class VegetablesViewController: UIViewController {
    
    lazy var vegetablesView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(vegetablesTitleLabel)
        return view
    }()
    
    lazy var vegetablesTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Vegetables"
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
        view.addSubview(vegetablesTitleLabel)
        view.addSubview(vegetablesView)
        
        NSLayoutConstraint.activate([
            vegetablesView.topAnchor.constraint(equalTo: view.topAnchor),
            vegetablesView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            vegetablesView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            vegetablesView.heightAnchor.constraint(equalToConstant: 170),
            
            vegetablesTitleLabel.centerXAnchor.constraint(equalTo: vegetablesView.centerXAnchor),
            vegetablesTitleLabel.centerYAnchor.constraint(equalTo: vegetablesView.centerYAnchor),
        ])
    }
}
