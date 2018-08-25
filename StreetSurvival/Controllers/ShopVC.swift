//
//  ShopVC.swift
//  StreetSurvival
//
//  Created by Admin on 21.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import UIKit
import RealmSwift
class ShopVC: UITableViewController {

    let realm = try! Realm()
    var player = Player()
    var inventory: Results<InventoryDataService>!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ShopCellVS", bundle: nil), forCellReuseIdentifier: "itemCell")
        tableView.rowHeight = 110.0
    }

    @IBAction func getBackButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getItems().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as? ShopCellVS{
            let category = DataService.instance.getItems()[indexPath.row]
            cell.updateView(product: category)
            return cell
        } else{
            return ShopCellVS()
        }
}
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newItem = Stash()
        let buyingItem = DataService.instance.getItems()[indexPath.row]
        newItem.name = buyingItem.itemName
        newItem.desc = buyingItem.itemDesc
        newItem.imageName = buyingItem.image
        newItem.ammount = 1
        buyItem(category: newItem)
        dismiss(animated: true, completion: nil)
    }
    
    func buyItem(category: Stash){
        do{
            try realm.write {
                realm.add(category)
//                InventoryDataService.instance.inventory.append(category)
            }
          } catch{
                print("Error saving \(error)")
            }
    }
    
    
    
    
}
    
    

