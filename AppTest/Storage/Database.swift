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
        /*FirebaseApp.configure()
        
        var ref: DatabaseReference!

        ref = Database.database().reference()
        
        ref.child("users").getData(completion:  { error, snapshot in
          guard error == nil else {
            print(error!.localizedDescription)
            return;
          }
          let userName = snapshot.value as? String ?? "Unknown";
        });*/
    }
    
    static func store(userName: String) {
        
    }
    
    static func loadUserName() -> String {
        return ""
    }
}


