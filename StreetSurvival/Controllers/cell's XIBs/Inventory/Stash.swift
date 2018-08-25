//
//  Stash.swift
//  StreetSurvival
//
//  Created by Admin on 22.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import Foundation
import RealmSwift
class Stash : Object{
    
    @objc dynamic var imageName : String = ""
    @objc dynamic var name : String = ""
    @objc dynamic var desc : String = ""
    @objc dynamic var ammount : Int = 1
    
  

  //  var parentCategory = LinkingObjects(fromType: Player.self, property: "playerStash")
    var parentCategory = LinkingObjects(fromType: InventoryDataService.self, property: "inventory")
//    init(itemName: String, description: String, ammountOfItem: Int){
//        name = itemName
//        desc = description
//        ammount = ammountOfItem
//    }
//
 
  
}
