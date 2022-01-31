//
//  Localizable.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import UIKit

enum Localizable {
    
    static private let languageKey = "GIFFTCurrentLanguageKey"
    
    static func saveLanguage(_ selectedLanguage: String) {
        UserDefaults.standard.set(selectedLanguage, forKey: languageKey)
        UserDefaults.standard.synchronize()
    }
    
    static func loadLanguage() -> String {
        UserDefaults.standard.object(forKey: languageKey) as? String ?? "en"
    }
}
