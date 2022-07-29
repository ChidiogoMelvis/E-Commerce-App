//
//  Extension+HomeViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 13/07/2022.
//
import UIKit
extension HomeViewController {
    // MARK: - Protocols of the collectionview cells in the Homeviewcontroller
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: dashBoardCell, for: indexPath) as! MenuVC
            cell.menu = menuArray
            return cell
        }else if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: groceriesCell, for: indexPath) as! GroceriesVC
                cell.groceries = groceriesArray[indexPath.item]
                cell.delegate = self
                return cell
        }else if indexPath.section == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productCell, for: indexPath) as! NewProductsVC
            cell.newProducts = newProductsArray[indexPath.item]
            return cell
        }else if indexPath.section == 3 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: popularProductCell, for: indexPath) as! PopularProductsVC
            cell.popularProducts = popularProductsArray[indexPath.item]
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: stores, for: indexPath) as! StoresToFollowVC
            cell.stores = storeArray[indexPath.item]
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: view.frame.width, height: view.frame.width/2)
        } else if indexPath.section == 1{
            let width = collectionView.frame.size.width
            return CGSize(width: width, height: width/2)
        }
        let width = collectionView.frame.size.width
        return CGSize(width: width, height: width/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if section == 0 {
            return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 15)
        }else if section == 1{
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }else if section == 4{
            return UIEdgeInsets(top: 40, left: 0, bottom: 10, right: 0)
        }
        return UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if section == 0 && section == 1 {
            return 1
        } 
        return 70
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        if section == 0 {
            return 1
        }else if section == 1{
            return 0
        }
        return 70
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if indexPath.section == 2 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: NewProductReusableView.identifier, for: indexPath) as! NewProductReusableView
            header.configure()
            return header
        } else  if indexPath.section == 3 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: PopularProductReusableView.identifier, for: indexPath) as! PopularProductReusableView
            header.configure()
            return header
        } else if indexPath.section == 4{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: StoreReusableView.identifier, for: indexPath) as! StoreReusableView
            header.configure()
            return header
        }else {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MenuReusableView.identifier, for: indexPath) as! MenuReusableView
            header.configure()
            return header
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 100, height: 10)
    }
}

// MARK: Implementation of the custom protocol 
extension HomeViewController: CellSelectedDelegate {
    func cellSelected(_ vc: UIViewController) {
        self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.navigationBar.tintColor = UIColor(named: "white")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
}

