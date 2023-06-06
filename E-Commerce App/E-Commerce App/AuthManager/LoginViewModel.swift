//
//  LoginViewModel.swift
//  E-Commerce App
//
//  Created by Mac on 06/06/2023.
//

import Foundation
import Firebase
import FirebaseAuth

class LoginViewModel {
    func login(email: String?, password: String?, completion: @escaping (Error?) -> Void) {
        guard let email = email, let password = password else {
            let error = NSError(domain: "LoginError", code: 0, userInfo: [NSLocalizedDescriptionKey: "Please enter an email and password."])
            completion(error)
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error == nil {
                print("You have successfully logged in")
                completion(nil)
            } else {
                completion(error)
            }
        }
    }
}

