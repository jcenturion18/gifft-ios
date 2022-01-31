//
//  UIView.swift
//  AppTest
//
//  Created by Julian Centurion on 31/01/2022.
//

import Foundation
import UIKit

extension UIView {
    func rounded(cornerRadius: Int = 6) {
        layer.cornerRadius = CGFloat(cornerRadius)
        clipsToBounds = true
    }
}
