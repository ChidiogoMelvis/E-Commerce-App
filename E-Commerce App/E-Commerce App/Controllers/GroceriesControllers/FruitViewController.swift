//
//  FruitViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 26/07/2022.
//

import UIKit

class FruitViewController: UIViewController {
    
    lazy var fruitView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fruitTitleLabel)
        return view
    }()
    
    lazy var fruitTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Fruit"
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
        view.addSubview(fruitTitleLabel)
        view.addSubview(fruitView)
        
        NSLayoutConstraint.activate([
            fruitView.topAnchor.constraint(equalTo: view.topAnchor),
            fruitView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            fruitView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            fruitView.heightAnchor.constraint(equalToConstant: 170),
            
            fruitTitleLabel.centerXAnchor.constraint(equalTo: fruitView.centerXAnchor),
            fruitTitleLabel.centerYAnchor.constraint(equalTo: fruitView.centerYAnchor),
        ])
    }
}
