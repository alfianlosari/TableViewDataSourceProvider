//
//  ItemCell.swift
//  TodoTableViewDataProvider
//
//  Created by Alfian Losari on 05/08/18.
//  Copyright © 2018 Alfian Losari. All rights reserved.
//

import UIKit

public class ItemCell: UITableViewCell {
    
    func config(with item: Item) {
        textLabel?.text = item.title
        detailTextLabel?.text = item.desc
    }
    
}
