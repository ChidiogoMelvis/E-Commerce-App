//
//  DashBoardVC.swift
//  E-Commerce App
//
//  Created by Decagon on 17/07/2022.
//

import UIKit
// MARK: - Menu collectionview section
class MenuVC: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cellId = "cellId"
    
    var menu: [MenuModel]? {
        didSet{
            collectionView.reloadData()
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.dataSource = self
        collectionview.delegate = self
        collectionview.backgroundColor = #colorLiteral(red: 0.9331627488, green: 0.9712334275, blue: 0.9720134139, alpha: 1)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.register(ImageCell.self, forCellWithReuseIdentifier: cellId)
        return collectionview
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ImageCell
        cell.menuImage.image = menuArray[indexPath.item].menuImage
        cell.menuFirstLabel.text = menuArray[indexPath.item].firstMenuLabel
        cell.menuSecondLabel.text = menuArray[indexPath.item].secondMenuLabel
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 302, height: 165)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    func setupSubviews() {
        self.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 5),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Subview cells for the Menu collectionview
    class ImageCell: UICollectionViewCell {
        
        lazy var menuView: UIView = {
            let view = UIView()
            view.layer.cornerRadius = 8
            view.layer.masksToBounds = true
            view.clipsToBounds = true
            view.translatesAutoresizingMaskIntoConstraints = false
            let items = [menuImage, menuFirstLabel, menuSecondLabel]
            for item in items {
                self.addSubview(item)
            }
            return view
        }()
        
        lazy var menuImage: UIImageView = {
            let image = UIImageView()
            image.translatesAutoresizingMaskIntoConstraints = false
            image.contentMode = .scaleAspectFill
            image.clipsToBounds = true
            image.layer.cornerRadius = 8
            image.layer.masksToBounds = true
            return image
        }()
        
        lazy var menuFirstLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(named: "white")
            label.font = customFont(size: 14, font: .MontserratBold)
            return label
        }()
        
        lazy var menuSecondLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor(named: "white")
            label.layer.borderWidth = 1
            label.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            label.layer.cornerRadius = 15
            label.textAlignment = .center
            label.heightAnchor.constraint(equalToConstant: 30).isActive = true
            label.widthAnchor.constraint(equalToConstant: 170).isActive = true
            label.font = customFont(size: 14, font: .MontserratBold)
            return label
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupSubviews()
        }
        
        func setupSubviews() {
            self.addSubview(menuView)
            
            NSLayoutConstraint.activate([
                menuView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
                menuView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                menuView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                menuView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
                
                menuImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
                menuImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                menuImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                menuImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                
                menuFirstLabel.topAnchor.constraint(equalTo: menuView.bottomAnchor, constant: -100),
                menuFirstLabel.leadingAnchor.constraint(equalTo: menuView.leadingAnchor, constant: 30),
                
                menuSecondLabel.topAnchor.constraint(equalTo: menuFirstLabel.bottomAnchor, constant: 17),
                menuSecondLabel.leadingAnchor.constraint(equalTo: menuImage.leadingAnchor, constant: 10),
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}

