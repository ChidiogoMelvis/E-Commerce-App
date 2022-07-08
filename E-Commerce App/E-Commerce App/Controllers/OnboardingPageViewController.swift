//
//  OnboardingPageViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 08/07/2022.
//

import UIKit
// MARK: 
class OnboardingPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pages: [UIViewController] = []
    var pageControl = UIPageControl()
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        button.setTitle("Next", for: .normal)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 24
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        view.backgroundColor = .white
        setupPageControl()
        
    }
    
    // MARK: - Overriding the default curl transition to scroll
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewControllers() {
        
        let initialPage = 0
        let pageOne = OnboardingViewControllerOne()
        let pageTwo = OnboardingViewControllerTwo()
        let pageThree = OnboardingViewControllerThree()
        
        self.pages.append(pageOne)
        self.pages.append(pageTwo)
        self.pages.append(pageThree)
        
        self.dataSource = self
        self.delegate = self
        
        pageControl.currentPage = 0
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 1)
        pageControl.numberOfPages = pages.count
        pageControl.pageIndicatorTintColor = #colorLiteral(red: 0.2, green: 0.5647058824, blue: 0.4862745098, alpha: 0.5536776915)
        pageControl.frame = CGRect(x: 0, y: 400, width: view.frame.size.width, height: view.frame.size.height)
        pageControl.currentPage = initialPage
        
        setViewControllers([pages[initialPage]], direction: .forward,
                           animated: false,
                           completion: nil)
        
    }
    
    //MARK: - Setupviews and constraint of the page controller
    func setupPageControl() {
        view.addSubview(pageControl)
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            pageControl.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -120),
            pageControl.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            pageControl.heightAnchor.constraint(equalToConstant: 20),
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            nextButton.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 30),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: 48),
            nextButton.widthAnchor.constraint(equalToConstant: 306),
        ])
    }
    
}


