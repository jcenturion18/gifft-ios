//
//  Localizable.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import UIKit

enum Localizable: String {
    
    case english = "en"
    case german = "de"
    
    static private let languageKey = "GIFFTCurrentLanguageKey"
        
    static func saveLanguage(_ selectedLanguage: String) {
        UserDefaults.standard.set(selectedLanguage, forKey: languageKey)
        UserDefaults.standard.synchronize()
    }
    
    static func loadLanguage() -> String {
        UserDefaults.standard.object(forKey: languageKey) as? String ?? "en"
    }
    
    static func nextLanguage() {
        if loadLanguage() == english.rawValue {
            saveLanguage(german.rawValue)
        } else {
            saveLanguage(english.rawValue)
        }
    }
}
