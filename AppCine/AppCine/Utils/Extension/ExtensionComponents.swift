//
//  ExtensionComponents.swift
//  AppCine
//
//  Created by Luis De La Rosa on 01/02/24.
//

import Foundation

extension String {

    func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }

}
