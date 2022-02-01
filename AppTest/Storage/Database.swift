//
//  Database.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

protocol DataBaseInterface {
    static func setUpProvider()
    func store(userName: String)
    func loadUserName(callback: @escaping(User) -> Void)
}

struct User: Codable {
    let name: String?
}

class DataBaseImp: DataBaseInterface {

    let db = Firestore.firestore()

    static func setUpProvider() {
        FirebaseApp.configure()
    }

    func store(userName: String) {
        _ = db.collection("users")
            .addDocument(data: ["name": userName]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                }
            }

    }

    func loadUserName(callback: @escaping(User) -> Void) {
        db.collection("users")
            .whereField("name", isNotEqualTo: "")
            .order(by: "name", descending: true).limit(to: 1)
            .getDocuments { (response, err) in
                if let err = err {
                    print("Error getting documents: \(err)")
                }

                let result = Result {
                    try response?.documents[0].data(as: User.self)
                }

                switch result {
                    case .success(let user):
                        if let user = user {
                            callback(user)
                        }
                    break
                    case .failure(let error):
                        print("Error decoding user: \(error)")
                    break
                }
        }
    }
}
