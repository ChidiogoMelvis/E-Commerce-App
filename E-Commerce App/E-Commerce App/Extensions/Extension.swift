//
//  Extension.swift
//  E-Commerce App
//
//  Created by Decagon on 08/07/2022.
//

import Foundation
import UIKit

extension OnboardingPageViewController {
    
    //MARK: - This protocol is for the navigation gestures of the pages viewcontrollers
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index > 0 else{
            return nil
        }
        let before = index - 1
        return pages[before]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index < (pages.count - 1) else{
            return nil
        }
        let after = index + 1
        return pages[after]
    }
    
    //MARK: - set the pageControl.currentPage to the index of the current viewController in pages
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let viewControllers = pageViewController.viewControllers {
            if let viewControllerIndex = self.pages.firstIndex(of: viewControllers[0]) {
                self.pageControl.currentPage = viewControllerIndex
            }
        }
    }
}
