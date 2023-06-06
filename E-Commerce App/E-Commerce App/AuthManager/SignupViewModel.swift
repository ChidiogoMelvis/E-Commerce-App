//
//  AuthManager.swift
//  E-Commerce App
//
//  Created by Mac on 06/06/2023.
//

import Foundation
import Firebase
import FirebaseAuth

class SignupViewModel {
    var email: String = ""
    var password: String = ""
    var reEnterPassword: String = ""
    var firstName: String = ""
    var lastName: String = ""

    func createUser(completion: @escaping (Bool, Error?) -> Void) {
        let details = ["email": email, "firstName": firstName, "lastName": lastName]
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(false, error)
                return
            }

            guard let uid = result?.user.uid else { return }

            Database.database().reference().child("users").child(uid).updateChildValues(details) { error, _ in
                if let error = error {
                    completion(false, error)
                    return
                }

                completion(true, nil)
            }
        }
    }
}

