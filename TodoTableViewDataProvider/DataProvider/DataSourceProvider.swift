//
//  DataSourceProvider.swift
//  TodoTableViewDataProvider
//
//  Created by Alfian Losari on 05/08/18.
//  Copyright © 2018 Alfian Losari. All rights reserved.
//

import UIKit

public class DataSourceProvider: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    private let dataManager: DataManager
    
    init(dataManager: DataManager) {
        self.dataManager = dataManager
        super.init()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.itemsCount
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        let item = dataManager.item(at: indexPath.row)
        cell.config(with: item)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataManager.delete(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
}
