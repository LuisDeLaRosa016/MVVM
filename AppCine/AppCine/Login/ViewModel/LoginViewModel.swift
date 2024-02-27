//
//  LoginViewModel.swift
//  AppCine
//
//  Created by Luis De La Rosa on 21/02/24.
//

import Foundation
import UIKit
import FirebaseAuth

class LoginViewModel {
    
    func signIn(email: String, password: String, completion: @escaping (Result<User, Error>) -> Void){
        
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                completion(.failure(error))
            } else if let user = authResult?.user {
                completion(.success(user))
            }
            
        }
        
    }
    
}
