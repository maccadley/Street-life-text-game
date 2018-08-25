//
//  InventoryCell.swift
//  StreetSurvival
//
//  Created by Admin on 22.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import UIKit

class InventoryCell: UITableViewCell {

    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var nameofItem: UILabel!
    @IBOutlet weak var descriptionOfItem: UILabel!
    @IBOutlet weak var ammount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    var playerIntentory = [Stash]()

    func updateView(category: Stash){
        itemImage.image = UIImage(named: category.imageName)
        nameofItem.text = category.name
        descriptionOfItem.text = category.desc
        ammount.text = String(category.ammount)
    }
    
}
