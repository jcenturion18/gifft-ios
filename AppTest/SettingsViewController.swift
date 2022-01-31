//
//  SettingsViewController.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
    }
    
    func setUpView() {
        titleLabel.text = StringConstants.settigs
    }
}
