//
//  PopularProductReusableView.swift
//  E-Commerce App
//
//  Created by Decagon on 19/07/2022.
//

import UIKit
// MARK: - Reusableview for the section headers
class PopularProductReusableView: UICollectionReusableView {
    
    static let identifier = "PopularProductReusableView"
    
    lazy var newProductHeader: UILabel = {
        let label = UILabel()
        label.text = "Popular Product"
        label.font = customFont(size: 18, font: .MontserratBold)
        label.textColor = UIColor(named: "dark")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var seeAllBtn: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkgreen")
        button.setTitle("See All", for: .normal)
        button.setTitleColor(UIColor(named: "white"), for: .normal)
        button.layer.cornerRadius = 13
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    public func configure() {
        addSubview(newProductHeader)
        addSubview(seeAllBtn)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupHeaders()
    }
    
    func setupHeaders() {
        NSLayoutConstraint.activate([
            newProductHeader.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            newProductHeader.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            
            seeAllBtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            seeAllBtn.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            seeAllBtn.heightAnchor.constraint(equalToConstant: 25),
            seeAllBtn.widthAnchor.constraint(equalToConstant: 120),
        ])
    }
}
