//
//  SettingsViewController.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.prefersLargeTitles = true
        setUpLabels()
    }
    
    func setUpLabels() {
        navigationItem.title = StringConstants.settigs
    }
    
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        switch(indexPath.row){
        case 0:
            cell.textLabel?.text = StringConstants.language
            break
        case 1:
            cell.textLabel?.text = StringConstants.addUser
            break
        case 2:
            cell.textLabel?.text = StringConstants.lastUser
            break
        default:
            break
        }
        
        return cell
    }
}
