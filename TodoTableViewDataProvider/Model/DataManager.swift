//
//  DataManager.swift
//  TodoTableViewDataProvider
//
//  Created by Alfian Losari on 05/08/18.
//  Copyright © 2018 Alfian Losari. All rights reserved.
//

import Foundation

public class DataManager {
    
    public private(set) var items = [
        Item(title: "Proactive", desc: "Responsibility in your life"),
        Item(title: "Independent", desc: "Freedom in your inner self"),
        Item(title: "Interdependence", desc: "Mutual win win relationship"),
        Item(title: "Synergy", desc: "Working together to achieve one goal")
    ]
    
    public var itemsCount: Int {
        return items.count
    }
    
    public func item(at index: Int) -> Item {
        return items[index]
    }
    
    public func add(item: Item) {
        items.append(item)
    }
    
    public func delete(at index: Int) {
        items.remove(at: index)
    }
    
    public func edit(item: Item, at index: Int) {
        items[index] = item
    }
    
    
}
