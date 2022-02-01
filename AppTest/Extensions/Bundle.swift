//
//  Bundle.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import Foundation

extension Bundle {
    
    static func localizableBundle(localizable: Localizable) -> Bundle? {
        let bundle: Bundle = .main
        // Try to load from language specific bundle
        if let path = bundle.path(forResource: localizable.loadLanguage(), ofType: "lproj"),
          let bundle = Bundle(path: path) {
            return bundle
        }
        
        return nil
    }
}
