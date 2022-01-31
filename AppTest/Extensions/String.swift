//
//  String.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import Foundation

extension String {
    func localized() -> String {
        return Bundle.localizableBundle()!.localizedString(forKey: self, value: "", table: "Localizable")
    }
}
