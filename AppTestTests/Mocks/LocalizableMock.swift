//
//  LocalizableMock.swift
//  AppTestTests
//
//  Created by Julian Centurion on 01/02/2022.
//

import Foundation
@testable import AppTest

class LocalizableMock: Localizable {

    private var savedLanguage: LocalizableOptions = .english

    func saveLanguage(_ selectedLanguage: LocalizableOptions) {
        self.savedLanguage = selectedLanguage
    }

    func loadLanguage() -> String {
        savedLanguage.rawValue
    }
}
