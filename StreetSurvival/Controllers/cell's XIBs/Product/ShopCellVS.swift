//
//  ShopCellVS.swift
//  StreetSurvival
//
//  Created by Admin on 22.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import UIKit

class ShopCellVS: UITableViewCell {

    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var descriptionItem: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateView(product: Product){
        imageItem.image = UIImage(named: product.image)
        name.text = product.itemName
        descriptionItem.text = product.itemDesc
        price.text = String(product.itemPrice)
    }
    
    
}
