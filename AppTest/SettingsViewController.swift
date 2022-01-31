//
//  SettingsViewController.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var buttonsContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpLabels()
        setUpViews()
    }
    
    func setUpLabels() {
        titleLabel.text = StringConstants.settigs
    }
    
    func setUpViews() {
        stackView.rounded(cornerRadius: 10)
        buttonsContainer.backgroundColor = .clear
        buttonsContainer.layer.applyShadow()
    }
}

