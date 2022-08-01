//
//  ReusableTextField.swift
//  E-Commerce App
//
//  Created by Decagon on 28/07/2022.
//

import UIKit

class CustomTextField: UITextField {
    
    init(title: String) {
        super.init(frame: .zero)
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: self.frame.height))
        leftViewMode = .always
        tintColor = UIColor(named: "white")
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(named: "darkgreen")
        layer.borderWidth = 1
        font = customFont(size: 14, font: .MontserratRegular)
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        layer.cornerRadius = 16
        attributedPlaceholder = NSAttributedString(string: title, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
