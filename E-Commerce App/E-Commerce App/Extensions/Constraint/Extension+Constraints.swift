//
//  Extension+Constraints.swift
//  E-Commerce App
//
//  Created by Decagon on 13/07/2022.
//

import UIKit

extension HomeViewController {
    //MARK: - Constraints of the Homeviewcontroller properties
    func setupConstraint() {
        let subviews = [topView, groceriesTitleLabel, heartIcon, cartIcon, searchTextField, searchIcon, collectionView]
        for subview in subviews {
            view.addSubview(subview)
        }
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 170),
            
            groceriesTitleLabel.topAnchor.constraint(equalTo: topView.topAnchor, constant: 56),
            groceriesTitleLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 16),
            
            heartIcon.topAnchor.constraint(equalTo: topView.topAnchor, constant: 60),
            heartIcon.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -68),
            
            cartIcon.topAnchor.constraint(equalTo: topView.topAnchor, constant: 60),
            cartIcon.leadingAnchor.constraint(equalTo: heartIcon.trailingAnchor, constant: 22),
            
            searchTextField.topAnchor.constraint(equalTo: topView.topAnchor, constant: 108),
            searchTextField.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20),
            searchTextField.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20),
            searchTextField.heightAnchor.constraint(equalToConstant: 46),
            searchTextField.widthAnchor.constraint(equalToConstant: 355),
            
            searchIcon.topAnchor.constraint(equalTo: searchTextField.topAnchor, constant: 14),
            searchIcon.leadingAnchor.constraint(equalTo: searchTextField.leadingAnchor, constant: 18),
            
            collectionView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
