//
//  Extension+HomeViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 13/07/2022.
//
import UIKit
extension HomeViewController {
    // MARK: - Protocols of the collectionview cells in the Homecontrollerview
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return newProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsVC", for: indexPath) as! ProductsVC
        cell.imageView.image = newProducts[indexPath.section].productImage
        cell.productName.text = newProducts[indexPath.section].productName
        cell.productAmount.text = newProducts[indexPath.section].productAmount
        cell.sectionView.backgroundColor = UIColor(named: "lightGray")
        return cell
    } 
}
