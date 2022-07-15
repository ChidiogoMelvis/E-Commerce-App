//
//  Extension+SetupScrollviews.swift
//  E-Commerce App
//
//  Created by Decagon on 15/07/2022.
//
import UIKit
// MARK: - The set up for the scroll imageview
extension HomeViewController {
    func setupScrollviews() {
        for _ in 0..<3 {
            let view = UIImageView()
            view.image = UIImage(named: "groceries")
            view.translatesAutoresizingMaskIntoConstraints = false
            view.widthAnchor.constraint(equalToConstant: 302).isActive = true
            view.heightAnchor.constraint(equalToConstant: 165).isActive = true
            view.layer.cornerRadius = 8
            stackView.addArrangedSubview(view)
        }
    }
}
