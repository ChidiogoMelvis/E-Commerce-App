//
//  GroceriesVC.swift
//  E-Commerce App
//
//  Created by Decagon on 20/07/2022.
//

import UIKit

class GroceriesVC: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var cell = "Cell"
    var delegate: CellSelectedDelegate?
    var groceries: GroceriesModel? {
        didSet{
            collectionView.reloadData()
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.delegate = self
        collection.dataSource = self
        collection.backgroundColor = #colorLiteral(red: 0.9331627488, green: 0.9712334275, blue: 0.9720134139, alpha: 1)
        collection.register(GroceriesCell.self, forCellWithReuseIdentifier: cell)
        
        return collection
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCollectionViews()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groceriesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cell, for: indexPath) as! GroceriesCell
        cell.groceriesImage.image = groceriesArray[indexPath.item].groceriesImage
        cell.groceriesLabel.text = groceriesArray[indexPath.item].groceriesLabel
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (frame.size.width - 4) / 4
        return CGSize(width: width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0 {
            let vc = BeveragesViewController()
            self.delegate?.cellSelected(vc)
        } else if indexPath.item == 1 {
            let vc = BreadBakeryViewController()
            self.delegate?.cellSelected(vc)
        } else if indexPath.item == 2 {
            let vc = VegetablesViewController()
            self.delegate?.cellSelected(vc)
        } else if indexPath.item == 3 {
            let vc = FruitViewController()
            self.delegate?.cellSelected(vc)
        } else if indexPath.item == 4 {
            let vc = EggViewController()
            self.delegate?.cellSelected(vc)
        } else if indexPath.item == 5 {
            let vc = FrozenVegViewController()
            self.delegate?.cellSelected(vc)
        } else if indexPath.item == 6 {
            let vc = HomeCareViewController()
            self.delegate?.cellSelected(vc)
        } else {
            let vc = PetCareViewController()
            self.delegate?.cellSelected(vc)
        }
    }
    
    var didSelectItem: (() -> ())?
    func setupCollectionViews() {
        self.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    class GroceriesCell: UICollectionViewCell {
        
        var delegate: CellSelectedDelegate?
        
        lazy var groceriesView: UIView = {
            let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            let items = [groceriesImage, groceriesLabel]
            for item in items {
                self.addSubview(item)
            }
            return view
        }()
        
        lazy var groceriesImage: UIImageView = {
            let image = UIImageView()
            image.translatesAutoresizingMaskIntoConstraints = false
            image.contentMode = .scaleAspectFill
            image.clipsToBounds = true
            return image
        }()
        
        lazy var groceriesLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
            return label
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
            backgroundColor = .systemPurple
        }
        
        func setupViews() {
            self.addSubview(groceriesView)
            NSLayoutConstraint.activate([
                groceriesView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
                groceriesView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                groceriesView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                groceriesView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
                
                groceriesImage.topAnchor.constraint(equalTo: groceriesView.topAnchor, constant: 0),
                groceriesImage.leadingAnchor.constraint(equalTo: groceriesView.leadingAnchor, constant: 0),
                groceriesImage.trailingAnchor.constraint(equalTo: groceriesView.trailingAnchor, constant: -0),
                groceriesImage.bottomAnchor.constraint(equalTo: groceriesView.bottomAnchor, constant: -0),
                
                groceriesLabel.centerXAnchor.constraint(equalTo: groceriesImage.centerXAnchor),
                groceriesLabel.centerYAnchor.constraint(equalTo: groceriesImage.centerYAnchor),
            ])
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}
