//
//  Database.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import Foundation
import Firebase

protocol DataBase {
    static func setUpProvider()
}

class DataBaseImp : DataBase {
    
    static func setUpProvider() {
        // FirebaseApp.configure()
    }
}


