//
//  CALayer.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import UIKit

extension CALayer {
    func applyShadow(
        color: UIColor = .black,
        alpha: String = "19",
        x: CGFloat = 0,
        y: CGFloat = 8,
        blur: CGFloat = 20) {
        masksToBounds = false
        shadowColor = color.cgColor
        shadowOpacity = Float.from(hex: alpha)
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        shadowPath = nil
    }
}
