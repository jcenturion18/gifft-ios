//
//  SettingsViewControllerTests.swift
//  AppTestTests
//
//  Created by Julian Centurion on 01/02/2022.
//

import XCTest
@testable import AppTest

class SettingsViewControllerTests: XCTestCase {

    func testBasicControllerConfiguration() throws {
        
        let localizableMock = LocalizableMock()
        localizableMock.saveLanguage(LocalizableOptions.english)
        let wordings = Wordings(localizable: localizableMock)
        
        let database = DatabaseMock()
        database.store(userName: "Julian")
        
        
        let viewController = SettingsViewController()
            .with(wordings: wordings)
            .with(localizable: localizableMock)
            .with(database: database)
        
        _ = viewController.view
        
        let lastUserCell = viewController.tableView.cellForRow(at: IndexPath(row: 2, section: 0))
        XCTAssertEqual("Last user: Julian", lastUserCell!.textLabel!.text)
        
        XCTAssertEqual("Settings", viewController.navigationItem.title)
        
        viewController.changeLanguage()
        XCTAssertEqual("Einstellungen", viewController.navigationItem.title)
    }
}

