//
//  EggViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 26/07/2022.
//

import UIKit

class EggViewController: UIViewController {
    
    lazy var eggView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(eggTitleLabel)
        return view
    }()
    
    lazy var eggTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Egg"
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
        view.addSubview(eggTitleLabel)
        view.addSubview(eggView)
        
        NSLayoutConstraint.activate([
            eggView.topAnchor.constraint(equalTo: view.topAnchor),
            eggView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            eggView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            eggView.heightAnchor.constraint(equalToConstant: 170),
            
            eggTitleLabel.centerXAnchor.constraint(equalTo: eggView.centerXAnchor),
            eggTitleLabel.centerYAnchor.constraint(equalTo: eggView.centerYAnchor),
        ])
    }
}
