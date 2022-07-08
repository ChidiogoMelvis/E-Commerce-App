//
//  OnboardingViewControllerTwo.swift
//  E-Commerce App
//
//  Created by Decagon on 08/07/2022.
//

import UIKit
// MARK: - Properties of the pagesviewcontrollers
class OnboardingViewControllerTwo: UIViewController {
    lazy var topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        return topView
    }()
    
    lazy var onboardingImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.layer.cornerRadius = 5
        let img2 = UIImage(named: "img2")
        img.image = img2
        return img
    }()
    
    lazy var onboardingLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.numberOfLines = 0
        label.text = "Connecting NGOs, Social \n Enterprises with Communities"
        label.font = customFont(size: 18, font: .MontserratMedium)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        setupProperties()
    }
    
    func setupProperties() {
        view.addSubview(topView)
        view.addSubview(onboardingImage)
        view.addSubview(onboardingLabel)
        
        NSLayoutConstraint.activate([
            onboardingImage.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: -150),
            onboardingImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            onboardingImage.heightAnchor.constraint(equalToConstant: 300),
            onboardingImage.widthAnchor.constraint(equalToConstant: 300),
            
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.heightAnchor.constraint(equalToConstant: view.frame.height/2),
            topView.widthAnchor.constraint(equalToConstant: view.frame.width),
            
            onboardingLabel.topAnchor.constraint(equalTo: onboardingImage.bottomAnchor, constant: 50),
            onboardingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
}
