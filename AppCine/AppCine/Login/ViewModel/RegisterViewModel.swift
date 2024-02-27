//
//  RegisterViewModel.swift
//  AppCine
//
//  Created by Luis De La Rosa on 21/02/24.
//

import Foundation
import UIKit
import FirebaseAuth

class RegisterViewModel {
    
    func signUp(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void) {
        //FirebaseAuth API for sign in with email and password
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            //Check for error during login
            if let error = error {
                completion(.failure(error))
            } else if let user = authResult?.user {
                completion(.success(user))
            }
        }
        
    }
    
    
    
}
