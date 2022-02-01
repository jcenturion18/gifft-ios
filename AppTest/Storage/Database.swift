//
//  Database.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import Foundation
import Firebase

protocol DataBaseInterface {
    static func setUpProvider()
    static func store(userName: String)
}

class DataBaseImp : DataBaseInterface {
    
    static func setUpProvider() {
        FirebaseApp.configure()

        let db = Firestore.firestore()

        db.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
       
    }
    
    static func store(userName: String) {
        
    }
    
    static func loadUserName() -> String {
        return ""
    }
}


