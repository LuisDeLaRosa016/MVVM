//
//  StyleComponents.swift
//  AppCine
//
//  Created by Luis De La Rosa on 02/02/24.
//

import Foundation
import UIKit
import MaterialComponents

class ViewRoundedTop: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        RoundedTopStyle()
    }
    
    func RoundedTopStyle(){
        //Code for rounding top corners
        layer.cornerRadius = 20.0
        layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        //Code for add shadow on top
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 4.0
        
    }
}

class TextFieldStyles {
    static func styleList(to textField: MDCOutlinedTextField, label: String = "", text: String = "") {
        textField.label.text = label
        textField.text = text
        textField.tintColor = UIColor.clear

        // Configuration to outline
        textField.setOutlineColor(UIColor.gray, for: .editing)
        textField.setOutlineColor(UIColor.black, for: .normal)

        // Configuration to Radio
        textField.layer.cornerRadius = 5.0
    }
    
    static func styleForm(to textField: MDCOutlinedTextField, placeHolder: String = "", label: String = "") {
        textField.label.text = label
        textField.placeholder = placeHolder
        textField.tintColor = UIColor.clear

        // Configuration to outline
        textField.setOutlineColor(UIColor.black, for: .editing)
        textField.setOutlineColor(UIColor.black, for: .normal)
        
        // Configuration to Radio
        textField.layer.cornerRadius = 5.0
    }
    
    static func styleText(to textField: MDCOutlinedTextField, text: String = "", textHelp: String = "") {
        textField.text = text
        textField.leadingAssistiveLabel.text = textHelp
        textField.tintColor = UIColor.clear
        
        // Configuration to outline
        textField.setOutlineColor(UIColor.black, for: .editing)
        textField.setOutlineColor(UIColor.black, for: .normal)
        // Configuration to Radio
        textField.layer.cornerRadius = 5.0
    }
}
