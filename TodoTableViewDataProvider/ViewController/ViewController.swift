//
//  ViewController.swift
//  TodoTableViewDataProvider
//
//  Created by Alfian Losari on 05/08/18.
//  Copyright © 2018 Alfian Losari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    private var dataManager = DataManager()
    private lazy var dataSourceProvider = DataSourceProvider(dataManager: dataManager)

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        tableView.dataSource = dataSourceProvider
        tableView.delegate = dataSourceProvider
    }

}

