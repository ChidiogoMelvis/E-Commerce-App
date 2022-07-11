//
//  OnboardingViewControllerOne.swift
//  E-Commerce App
//
//  Created by Decagon on 08/07/2022.
//

import UIKit

class OnboardingViewControllerOne: UIViewController {
    // MARK: - Properties of the pagesviewcontrollers
    lazy var topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = UIColor(named: "darkgreen")
        return topView
    }()
    
    lazy var onboardingImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.clipsToBounds = true
        img.layer.cornerRadius = 5
        let img1 = UIImage(named: "img1")
        img.image = img1
        return img
    }()
    
    lazy var onboardingLabel: UILabel = {
        let label = UILabel()
        label.contentMode = .scaleAspectFill
        label.numberOfLines = 0
        label.text = "Empowering Artisans,\n Farmers & Micro Business"
        label.font = customFont(size: 18, font: .MontserratMedium)
        label.textAlignment = .center
        label.textColor = UIColor(named: "green")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkgreen")
        button.setTitle("Next", for: .normal)
        button.tintColor = UIColor(named: "white")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 24
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "white")       
        setupProperties()
    }
    
    // MARK: The constraints 
    func setupProperties() {
        let subviews = [topView, onboardingLabel, onboardingImage, nextButton]
        for subview in subviews {
            view.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            onboardingImage.topAnchor.constraint(equalTo: topView.safeAreaLayoutGuide.bottomAnchor, constant: -150),
            onboardingImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            onboardingImage.heightAnchor.constraint(equalToConstant: 300),
            onboardingImage.widthAnchor.constraint(equalToConstant: 300),
            
            topView.topAnchor.constraint(equalTo: view.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            topView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            topView.heightAnchor.constraint(equalToConstant: view.frame.height/2),
            topView.widthAnchor.constraint(equalToConstant: view.frame.width),
            
            onboardingLabel.topAnchor.constraint(equalTo: onboardingImage.safeAreaLayoutGuide.bottomAnchor, constant: 50),
            onboardingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            nextButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: 48),
            nextButton.widthAnchor.constraint(equalToConstant: 306),
        ])
    }
    
}
