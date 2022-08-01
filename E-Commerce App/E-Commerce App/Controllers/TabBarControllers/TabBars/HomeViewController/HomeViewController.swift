//
//  HomeViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 13/07/2022.
//

import UIKit

// MARK: - Properties of the Homeviewcontrollers
class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    lazy var topView: UIView = {
        let searchView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 170))
        searchView.backgroundColor = UIColor(named: "darkgreen")
        searchView.translatesAutoresizingMaskIntoConstraints = false
        return searchView
    }()
    
    lazy var groceriesTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Groceries"
        label.font = customFont(size: 24, font: .MontserratBold)
        label.textColor = UIColor(named: "white")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var heartIcon: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "heart"), for: .normal)
        return button
    }()
    
    lazy var cartIcon: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "cart"), for: .normal)
        return button
    }()
    
    lazy var searchTextField: UITextField = {
        let search = UITextField()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.placeholder = "Search Product"
        search.layer.cornerRadius = 23
        search.backgroundColor = UIColor(named: "white")
        search.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 64, height: 0))
        search.leftViewMode = .always
        search.font = customFont(size: 14, font: .MontserratMedium)
        return search
    }()
    
    lazy var searchIcon: UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(systemName: "magnifyingglass")
        icon.tintColor = UIColor(named: "green")
        return icon
    }()
    
    var dashBoardCell = "Cell1"
    var groceriesCell = "Cell2"
    var productCell = "Cell3"
    var popularProductCell = "Cell4"
    var stores = "Cell5"
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.backgroundColor = #colorLiteral(red: 0.9331627488, green: 0.9712334275, blue: 0.9720134139, alpha: 1)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.register(MenuCell.self, forCellWithReuseIdentifier: dashBoardCell)
        collectionview.register(GroceriesCell.self, forCellWithReuseIdentifier: groceriesCell)
        collectionview.register(NewProductsCell.self, forCellWithReuseIdentifier: productCell)
        collectionview.register(PopularProductsCell.self, forCellWithReuseIdentifier: popularProductCell)
        collectionview.register(StoresToFollowCell.self, forCellWithReuseIdentifier: stores)
        collectionview.register(NewProductReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: NewProductReusableView.identifier)
        collectionview.register(PopularProductReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: PopularProductReusableView.identifier)
        collectionview.register(StoreReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: StoreReusableView.identifier)
        collectionview.register(MenuReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MenuReusableView.identifier)
        return collectionview
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraint()
    }
}

