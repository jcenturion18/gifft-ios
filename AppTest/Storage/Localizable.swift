//
//  Localizable.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import UIKit

protocol Localizable {
    func saveLanguage(_ selectedLanguage: String)
    func loadLanguage() -> String
    func nextLanguage()
}

class LocalizableImp: Localizable {
    
    let english = "en"
    let german = "de"
    
    private let languageKey = "GIFFTCurrentLanguageKey"
        
    func saveLanguage(_ selectedLanguage: String) {
        UserDefaults.standard.set(selectedLanguage, forKey: languageKey)
        UserDefaults.standard.synchronize()
    }
    
    func loadLanguage() -> String {
        UserDefaults.standard.object(forKey: languageKey) as? String ?? english
    }
    
    func nextLanguage() {
        if loadLanguage() == english {
            saveLanguage(german)
        } else {
            saveLanguage(english)
        }
    }
}
