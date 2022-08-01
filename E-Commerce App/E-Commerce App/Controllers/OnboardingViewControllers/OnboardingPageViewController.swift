//
//  OnboardingPageViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 08/07/2022.
//

import UIKit
// MARK: 
class OnboardingPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate, UIViewControllerTransitioningDelegate {
    
    var pages: [UIViewController] = []
    var pageControl = UIPageControl()
    var initialPage = 0
    var pendingIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        view.backgroundColor = UIColor(named: "white")
        setupPageControl()
    }
    // MARK: - Overriding the default curl transition to scroll
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: -
    func setupViewControllers() {
        self.dataSource = self
        self.delegate = self
        
        let pageOne = OnboardingViewControllerOne()
        pageOne.nextButton.addTarget(self, action: #selector(firstBtnPressed), for: .touchUpInside)
        
        let pageTwo = OnboardingViewControllerTwo()
        pageTwo.nextButton.addTarget(self, action: #selector(secondBtnPressed), for: .touchUpInside)
        
        let pageThree = OnboardingViewControllerThree()
        pageThree.nextButton.addTarget(self, action: #selector(thirdBtnPressed), for: .touchUpInside)
        
        self.pages.append(pageOne)
        self.pages.append(pageTwo)
        self.pages.append(pageThree)
        
        pageControl.currentPage = 0
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        pageControl.currentPageIndicatorTintColor = UIColor(named: "darkgreen")
        pageControl.numberOfPages = pages.count
        pageControl.pageIndicatorTintColor = UIColor(named: "lightgreen")
        pageControl.frame = CGRect(x: 0, y: 400, width: view.frame.size.width, height: view.frame.size.height)
        pageControl.currentPage = initialPage
        
        setViewControllers([pages[initialPage]], direction: .forward,
                           animated: false,
                           completion: nil)
    }
    // MARK:
    @objc func firstBtnPressed() {
        setViewControllers([pages[1]], direction:  UIPageViewController.NavigationDirection.forward, animated: false, completion: nil)
    }
    // MARK: -
    @objc func secondBtnPressed() {
        setViewControllers([pages[2]], direction:  UIPageViewController.NavigationDirection.forward, animated: false, completion: nil)
    }
    // MARK: -
    @objc func thirdBtnPressed() {
        let nextScreen = LoginViewController()
        nextScreen.modalPresentationStyle = .fullScreen
        nextScreen.transitioningDelegate = self
        present(nextScreen, animated: true, completion: nil)
    }
    //MARK: - Setupviews and constraint of the page controller
    func setupPageControl() {
        view.addSubview(pageControl)
        
        NSLayoutConstraint.activate([
            pageControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120),
            pageControl.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            pageControl.heightAnchor.constraint(equalToConstant: 20),
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}


