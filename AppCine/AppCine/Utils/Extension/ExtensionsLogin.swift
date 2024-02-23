//
//  ExtensionsLogin.swift
//  AppCine
//
//  Created by Luis De La Rosa on 21/02/24.
//

import Foundation
import UIKit

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Método llamado cuando se presiona "Intro" en el teclado
            textField.resignFirstResponder()
            return true
    }
    
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Método llamado cuando se presiona "Intro" en el teclado
            textField.resignFirstResponder()
            return true
    }
    
}
