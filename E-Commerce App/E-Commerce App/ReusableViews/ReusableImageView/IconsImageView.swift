//
//  IconsImageView.swift
//  E-Commerce App
//
//  Created by Decagon on 28/07/2022.
//

import UIKit

class IconsImageView: UIImageView {
    
    init(image: String) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(named: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
