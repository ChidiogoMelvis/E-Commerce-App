//
//  PetCareViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 26/07/2022.
//

import UIKit

class PetCareViewController: UIViewController {
    
    lazy var petCareView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        view.backgroundColor = UIColor(named: "darkgreen")
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(petCareTitleLabel)
        return view
    }()
    
    lazy var petCareTitleLabel: UILabel = {
        let message = UILabel()
        message.text = "Pet Care"
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
        view.addSubview(petCareTitleLabel)
        view.addSubview(petCareView)
        
        NSLayoutConstraint.activate([
            petCareView.topAnchor.constraint(equalTo: view.topAnchor),
            petCareView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            petCareView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            petCareView.heightAnchor.constraint(equalToConstant: 170),
            
            petCareTitleLabel.centerXAnchor.constraint(equalTo: petCareView.centerXAnchor),
            petCareTitleLabel.centerYAnchor.constraint(equalTo: petCareView.centerYAnchor),
        ])
    }
    
}
