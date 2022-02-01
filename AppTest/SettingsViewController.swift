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
    
    private var database: DataBaseInterface?
    private var wordings: Wordings?
    private var localizable: Localizable?
    
    // MARK: Builder
    func with(database: DataBaseInterface) -> SettingsViewController {
        self.database = database
        return self
    }
    
    func with(wordings: Wordings) -> SettingsViewController {
        self.wordings = wordings
        return self
    }
    
    func with(localizable: Localizable) -> SettingsViewController {
        self.localizable = localizable
        return self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.prefersLargeTitles = true
        setUpLabels()
    }
    
    func setUpLabels() {
        navigationItem.title = wordings?.settings()
        button.setTitle(wordings?.finished(), for: .normal)
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
            cell.textLabel?.text = wordings?.language()
            break
        case 1:
            cell.textLabel?.text = wordings?.addUser()
            break
        case 2:
            let userNameText = wordings!.lastUser()
            cell.textLabel?.text = "\(userNameText) \(DataBaseImp.loadUserName())"
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
        case 1:
            openInputDialog()
            break
        default:
            break
        }
    }
    
    func changeLanguage() {
        localizable?.nextLanguage()
        setUpLabels()
        tableView.reloadData()
    }
        
    func openInputDialog() {
        let alert = UIAlertController(title: "Enter user name", message: nil, preferredStyle: .alert)
        
        alert.addTextField { (textField) in
            textField.placeholder = "User name"
        }

        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned alert] _ in
            let userName = alert.textFields?[0].text ?? ""
            DataBaseImp.store(userName: userName)
        }

        alert.addAction(submitAction)
        present(alert, animated: true)
    }
}

