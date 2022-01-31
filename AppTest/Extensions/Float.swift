//
//  Float.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import Foundation

extension Float {
    static func from(hex: String) -> Float {
        let int = Int(hex.lowercased(), radix: 16)
        return Float(int!) / 255.0
    }
}

