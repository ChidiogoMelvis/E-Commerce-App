//
//  FrozenVegViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 26/07/2022.
//

import UIKit

class FrozenVegViewController: UIViewController {
    
    lazy var frozenVegView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(frozenVegTitleLabel)
        return view
    }()
    
    lazy var frozenVegTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Frozen veg"
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
        view.addSubview(frozenVegTitleLabel)
        view.addSubview(frozenVegView)
        
        NSLayoutConstraint.activate([
            frozenVegView.topAnchor.constraint(equalTo: view.topAnchor),
            frozenVegView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            frozenVegView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            frozenVegView.heightAnchor.constraint(equalToConstant: 170),
            
            frozenVegTitleLabel.centerXAnchor.constraint(equalTo: frozenVegView.centerXAnchor),
            frozenVegTitleLabel.centerYAnchor.constraint(equalTo: frozenVegView.centerYAnchor),
        ])
    }
    
}
