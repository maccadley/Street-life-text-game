//
//  DataService.swift
//  StreetSurvival
//
//  Created by Admin on 22.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import Foundation

class DataService {
   static let instance = DataService()
    
    let shopInventory = [
    Product(imageName: "beer.jpg", itemDescription: "Cheap beer. Cheep booz. Restores some health and hungry", nameOfItem: "Beer", priceOfItem: 150),
    Product(imageName: "naftizin.jpg", itemDescription: "Perfectly clears the nose, helping to enjoy the true smell of this city", nameOfItem: "Nasal drops", priceOfItem: 75),
    Product(imageName: "Stick.png", itemDescription: "Just a wooden stick. It's strange that it is for sale...", nameOfItem: "Stick", priceOfItem: 275),
    Product(imageName: "shaurma.jpg", itemDescription: "Tasty shaurma, that will restore your hungry!", nameOfItem: "Shaurma", priceOfItem: 200),
    Product(imageName: "gazel.jpg", itemDescription: "Quite well small truck. That'll help you in your business", nameOfItem: "Truck", priceOfItem: 350_000)
    ]
    
    func getItems() -> [Product] {
        return shopInventory
    }
}
