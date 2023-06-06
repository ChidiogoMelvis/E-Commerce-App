//
//  HomePageViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 11/07/2022.
//

import UIKit
// MARK: Homepage for the Tabbarviewcontroller
class TabBarViewController: UITabBarController {
    let controllers = UITabBarController()
    let firstVC = UINavigationController(rootViewController: HomeViewController())
    let secondVC = UINavigationController(rootViewController: BrowseViewController())
    let thirdVC = UINavigationController(rootViewController: StoreViewController())
    let fourthVC = UINavigationController(rootViewController: OrderHistoryViewController())
    let fifthVC = UINavigationController(rootViewController: ProfileViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        view.backgroundColor = #colorLiteral(red: 0.01266666781, green: 0.01266666595, blue: 0.01266666781, alpha: 0.02795306355)
    }
    func setupViewControllers() {
        let vcIcons = [
            UIImage(named: "home"),
            UIImage(named: "browse"),
            UIImage(named: "store"),
            UIImage(named: "orderhistory"),
            UIImage(named: "profile")
        ]
        firstVC.title = "Home"
        secondVC.title = "Browse"
        thirdVC.title = "Store"
        fourthVC.title = "Order History"
        fifthVC.title = "Profile"
        
        setViewControllers([firstVC, secondVC, thirdVC, fourthVC, fifthVC], animated: true)
        tabBar.tintColor = UIColor(named: "darkgreen")
        tabBar.backgroundColor = UIColor(named: "white")
        tabBar.unselectedItemTintColor = UIColor(named: "darkgray")
        
        guard let icons = self.tabBar.items else { return }
        for icon in 0...4 {
            icons[icon].image = vcIcons[(icon)]
        }
    }
}



