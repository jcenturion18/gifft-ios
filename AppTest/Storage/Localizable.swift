//
//  Localizable.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import UIKit

protocol Localizable {
    func saveLanguage(_ selectedLanguage: LocalizableOptions)
    func loadLanguage() -> String
}

extension Localizable {

    func nextLanguage() {
        if loadLanguage() == LocalizableOptions.english.rawValue {
            saveLanguage(LocalizableOptions.german)
        } else {
            saveLanguage(LocalizableOptions.english)
        }
    }
}

enum LocalizableOptions: String {
    case english = "en", german = "de"
}

class LocalizableImp: Localizable {

    private let languageKey = "GIFFTCurrentLanguageKey"

    func saveLanguage(_ selectedLanguage: LocalizableOptions) {
        UserDefaults.standard.set(selectedLanguage.rawValue, forKey: languageKey)
        UserDefaults.standard.synchronize()
    }

    func loadLanguage() -> String {
        UserDefaults.standard.object(forKey: languageKey) as? String ?? LocalizableOptions.english.rawValue
    }
}
