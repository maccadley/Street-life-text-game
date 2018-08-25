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
    Product(imageName: "beer.jpg", itemDescription: "Дешевое пиво, сильно отдающее спиртом, которое стоит недорого, но отлично дает по мозгам.", nameOfItem: "Пиво Охота", priceOfItem: 150),
    Product(imageName: "naftizin.jpg", itemDescription: "Отлично прочищает нос, помогая наслаждаться истинным запахом этого города", nameOfItem: "Нафтизин", priceOfItem: 75),
    Product(imageName: "Stick.png", itemDescription: "Простая деревянная палка. Странно что ее вообще продают", nameOfItem: "Палка", priceOfItem: 275),
    Product(imageName: "shaurma.jpg", itemDescription: "Та самая. Самая лучшая. Самая вкусная... Ваш отличный обед!", nameOfItem: "Шаурма", priceOfItem: 200),
    Product(imageName: "gazel.jpg", itemDescription: "Неплохая траспортная газель. С нее начнется Ваш бизнес", nameOfItem: "Газель", priceOfItem: 350_000)
    ]
    
    func getItems() -> [Product] {
        return shopInventory
    }
}
