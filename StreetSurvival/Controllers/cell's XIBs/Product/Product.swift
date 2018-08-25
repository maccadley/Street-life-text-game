//
//  Product.swift
//  StreetSurvival
//
//  Created by Admin on 22.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import Foundation

struct Product {
    var image : String
    var itemDesc : String
    var itemName : String
    var itemPrice : Int
    
    init(imageName: String, itemDescription: String, nameOfItem: String, priceOfItem: Int){
        self.image = imageName
        self.itemDesc = itemDescription
        self.itemName = nameOfItem
        self.itemPrice = priceOfItem
    }
    
}
