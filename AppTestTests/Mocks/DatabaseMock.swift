//
//  DatabaseMock.swift
//  AppTestTests
//
//  Created by Julian Centurion on 01/02/2022.
//

import Foundation
@testable import AppTest

class DatabaseMock: DataBaseInterface {
    
    var userName: String = ""
    
    static func setUpProvider() {
        
    }
    
    func store(userName: String) {
        self.userName = userName
    }
    
    func loadUserName(callback: @escaping (User) -> Void) {
        callback(User(name: userName))
    }
}
