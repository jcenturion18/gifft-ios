//
//  String.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import Foundation

extension String {
    func localized(_ localizable: Localizable) -> String {
        return Bundle.localizableBundle(localizable: localizable)!.localizedString(forKey: self, value: "", table: "Localizable")
    }
}
