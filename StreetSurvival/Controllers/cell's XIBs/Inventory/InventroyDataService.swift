//
//  InventroyDataService.swift
//  StreetSurvival
//
//  Created by Admin on 25.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import Foundation
import RealmSwift

class InventoryDataService: Object{
    static let instance = InventoryDataService()
    
    @objc dynamic var nameOfItem = ""
    @objc dynamic var itemName = ""
    @objc dynamic var itemDescrip = ""
    @objc dynamic var itemAmoount = 0
    let inventory = List<Stash>()
    
    
}
