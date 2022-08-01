//
//  HomeCollectionViewCell.swift
//  E-Commerce App
//
//  Created by Decagon on 13/07/2022.
//

import UIKit
// MARK: - New products collectionview section
class NewProductsCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var newProducts: NewProductsModel? {
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
        collectionview.register(NewPoductsCell.self, forCellWithReuseIdentifier: productCell)
        return collectionview
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newProductsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: productCell, for: indexPath) as! NewPoductsCell
        cell.imageView.image = newProductsArray[indexPath.item].productImage
        cell.productLabel.text = newProductsArray[indexPath.item].productName
        cell.appLabel.text = newProductsArray[indexPath.item].appName
        cell.amountLabel.text = newProductsArray[indexPath.row].productAmount
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
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 5),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Subview cells for the New products collectionview
    class NewPoductsCell: UICollectionViewCell {
        
        lazy var newProductView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            let items = [imageView, productLabel, appLabel, amountLabel]
            for item in items {
                self.addSubview(item)
            }
            return view
        }()
        
        lazy var imageView: UIImageView = {
            let image = UIImageView()
            image.layer.cornerRadius = 8
            image.contentMode = .scaleAspectFill
            image.clipsToBounds = true
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
        
        lazy var appLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(named: "darkgray")
            label.font = customFont(size: 14, font: .MontserratRegular)
            return label
        }()
        
        lazy var amountLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(named: "darkgreen")
            label.font = customFont(size: 14, font: .MontserratSemiBold)
            return label
        }()
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = UIColor(named: "white")
            layer.cornerRadius = 15
            //layer.cornerRadius = 15
            setupViews()
        }
        
        func setupViews() {
            self.addSubview(newProductView)
            NSLayoutConstraint.activate([
                newProductView.topAnchor.constraint(equalTo: self.topAnchor),
                newProductView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                newProductView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                newProductView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
                
                imageView.topAnchor.constraint(equalTo: newProductView.topAnchor, constant: 2),
                imageView.leadingAnchor.constraint(equalTo: newProductView.leadingAnchor, constant: 2),
                imageView.trailingAnchor.constraint(equalTo: newProductView.trailingAnchor, constant: -2),
                imageView.bottomAnchor.constraint(equalTo: newProductView.bottomAnchor, constant: -50),
                
                productLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
                productLabel.leadingAnchor.constraint(equalTo: newProductView.leadingAnchor, constant: 10),
                
                appLabel.topAnchor.constraint(equalTo: productLabel.bottomAnchor, constant: 5),
                appLabel.leadingAnchor.constraint(equalTo: newProductView.leadingAnchor, constant: 15),
                
                amountLabel.topAnchor.constraint(equalTo: productLabel.bottomAnchor, constant: 5),
                amountLabel.trailingAnchor.constraint(equalTo: newProductView.trailingAnchor, constant: -10),
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
