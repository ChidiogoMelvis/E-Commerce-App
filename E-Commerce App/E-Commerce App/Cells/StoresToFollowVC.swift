//
//  StoresToFollowVC.swift
//  E-Commerce App
//
//  Created by Decagon on 18/07/2022.
//

import UIKit
// MARK: - Stores collectionview section
class StoresToFollowVC: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var stores: StoresModel? {
        didSet{
            collectionView.reloadData()
        }
    }
    
    var productCell = "productCell"
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.dataSource = self
        collectionview.delegate = self
        collectionview.backgroundColor = #colorLiteral(red: 0.9331627488, green: 0.9712334275, blue: 0.9720134139, alpha: 1)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.register(StoresCell.self, forCellWithReuseIdentifier: productCell)
        return collectionview
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productCell, for: indexPath) as! StoresCell
        cell.imageView.image = storeArray[indexPath.item].storeImage
        cell.productLabel.text = storeArray[indexPath.item].storeName
        cell.followLabel.text = storeArray[indexPath.item].followLabel
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 170)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    func setupViews() {
        self.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Subview cells for the Stores collectionview
    class StoresCell: UICollectionViewCell {
        
        lazy var newProductView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            let items = [imageView, productLabel, followLabel]
            for item in items {
                self.addSubview(item)
            }
            return view
        }()
        
        lazy var imageView: UIImageView = {
            let image = UIImageView()
            image.contentMode = .scaleAspectFill
            image.clipsToBounds = true
            image.layer.cornerRadius = 8
            image.layer.masksToBounds = true
            image.translatesAutoresizingMaskIntoConstraints = false
            return image
        }()
        
        lazy var productLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(named: "dark")
            label.font = customFont(size: 14, font: .MontserratSemiBold)
            return label
        }()
        
        lazy var followLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(named: "white")
            label.layer.cornerRadius = 15
            label.textAlignment = .center
            label.backgroundColor = UIColor(named: "darkgreen")
            label.heightAnchor.constraint(equalToConstant: 23).isActive = true
            label.widthAnchor.constraint(equalToConstant: 86).isActive = true
            label.font = customFont(size: 14, font: .MontserratRegular)
            return label
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = UIColor(named: "white")
            layer.cornerRadius = 15
            setupViews()
        }
        
        func setupViews() {
            self.addSubview(newProductView)
            NSLayoutConstraint.activate([
                newProductView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
                newProductView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                newProductView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                newProductView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
                
                imageView.topAnchor.constraint(equalTo: newProductView.topAnchor, constant: 2),
                imageView.leadingAnchor.constraint(equalTo: newProductView.leadingAnchor, constant: 2),
                imageView.trailingAnchor.constraint(equalTo: newProductView.trailingAnchor, constant: -2),
                imageView.bottomAnchor.constraint(equalTo: newProductView.bottomAnchor, constant: -80),
                
                productLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
                productLabel.centerXAnchor.constraint(equalTo: newProductView.centerXAnchor),
                
                followLabel.topAnchor.constraint(equalTo: productLabel.bottomAnchor, constant: 20),
                followLabel.centerXAnchor.constraint(equalTo: newProductView.centerXAnchor),
            ])
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
