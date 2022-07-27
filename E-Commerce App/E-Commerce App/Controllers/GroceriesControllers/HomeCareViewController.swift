//
//  HomeCareViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 26/07/2022.
//

import UIKit

class HomeCareViewController: UIViewController {
    
    lazy var homeCareView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(homeCareTitleLabel)
        return view
    }()
    
    lazy var homeCareTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Home Care"
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
        view.addSubview(homeCareTitleLabel)
        view.addSubview(homeCareView)
        
        NSLayoutConstraint.activate([
            homeCareView.topAnchor.constraint(equalTo: view.topAnchor),
            homeCareView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            homeCareView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            homeCareView.heightAnchor.constraint(equalToConstant: 170),
            
            homeCareTitleLabel.centerXAnchor.constraint(equalTo: homeCareView.centerXAnchor),
            homeCareTitleLabel.centerYAnchor.constraint(equalTo: homeCareView.centerYAnchor),
        ])
    }
    
}
