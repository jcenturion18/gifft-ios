//
//  SettingsViewController.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button: UIButton!
    
    let cellReuseIdentifier = "TableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.prefersLargeTitles = true
        setUpLabels()
    }
    
    func setUpLabels() {
        navigationItem.title = StringConstants.settings()
        button.setTitle(StringConstants.finished(), for: .normal)
    }
    
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.selectionStyle = .none
        
        switch(indexPath.row) {
        case 0:
            cell.textLabel?.text = StringConstants.language()
            break
        case 1:
            cell.textLabel?.text = StringConstants.addUser()
            break
        case 2:
            cell.textLabel?.text = StringConstants.lastUser()
            break
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 0:
            changeLanguage()
            break
        default:
            break
        }
    }
    
    func changeLanguage() {
        Localizable.nextLanguage()
        setUpLabels()
        tableView.reloadData()
    }
}
