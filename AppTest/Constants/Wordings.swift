//
//  StringConstants.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

class Wordings {
    let localizable: Localizable

    init(localizable: Localizable) {
        self.localizable = localizable
    }

    func settings() -> String {
        "settings".localized(localizable)
    }

    func language() -> String {
        "language".localized(localizable)
    }

    func addUser() -> String {
        "add_user".localized(localizable)
    }

    func lastUser() -> String {
        "last_user".localized(localizable)
    }

    func finished() -> String {
        "finished".localized(localizable)
    }
}
