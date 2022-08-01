//
//  ReusableLabels.swift
//  E-Commerce App
//
//  Created by Decagon on 01/08/2022.
//

import UIKit

class CustomLabel: UILabel {
    
    init(label: String) {
        super.init(frame: .zero)
        font = customFont(size: 14, font: .MontserratMedium)
        textColor = UIColor(named: "dark")
        translatesAutoresizingMaskIntoConstraints = false
        self.text = label
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
