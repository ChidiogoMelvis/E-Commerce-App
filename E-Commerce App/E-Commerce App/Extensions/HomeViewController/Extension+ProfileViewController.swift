//
//  Extension+ProfileViewController.swift
//  E-Commerce App
//
//  Created by Decagon on 01/08/2022.
//

import UIKit
import Firebase
import FirebaseAuth

extension ProfileViewController {
    // MARK: - Logout implementation using firebase
    @objc func logoutBtnTapped() {
        let alertController = UIAlertController(title: "Logout Confirmation? \n", message: "Are you sure you want to logout from your account?.", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { (action: UIAlertAction!) in
            let auth = Auth.auth()
            do{
                try auth.signOut()
                self.presentLoginViewController()
            }catch let error{
               print("there is an err", error)
            }
        }))
        alertController.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (action: UIAlertAction!) in
            alertController.dismiss(animated: true, completion: nil)
        }))
        present(alertController, animated: true, completion: nil)
    }
    
    private func presentLoginViewController() {
        let viewController = LoginViewController()
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true, completion: nil)
    }
}
