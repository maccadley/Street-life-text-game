//
//  InventoryVC.swift
//  StreetSurvival
//
//  Created by Admin on 22.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import UIKit
import RealmSwift

class InventoryVC: UITableViewController {
    
    let realm = try! Realm()
    var player = Player()
    var itemStash: Results<Stash>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = realm.objects(Player.self).last!
        loadStash()
        tableView.register(UINib(nibName: "InventoryCell", bundle: nil), forCellReuseIdentifier: "inventoryCell")
        tableView.rowHeight = 100.0
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return itemStash?.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //return custom cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "inventoryCell", for: indexPath) as? InventoryCell
        if let category = itemStash?[indexPath.row]{
            cell?.itemImage.image = UIImage(named: category.imageName)
            cell?.nameofItem.text = category.name
            cell?.descriptionOfItem.text = category.desc
            cell?.ammount.text = "1"
        }
         return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItemName = itemStash![indexPath.row].name
        
        if selectedItemName == DataService.instance.shopInventory[0].itemName{
            do{
                try realm.write {
                    player.drinkBeer(min: 20, max: 30)
                }
            } catch{
                print("Error saving \(error)")
            }
        } else if selectedItemName == DataService.instance.shopInventory[1].itemName{
            do{
                try realm.write {
                    player.naftizinUsage(min: 10, max: 15)
                }
            } catch{
                print("Error saving \(error)")
            }
        } else if selectedItemName == DataService.instance.shopInventory[2].itemName{
            do{
                try realm.write {
                    player.stickArmor()
                }
            } catch{
                print("Error saving \(error)")
            }
        } else if selectedItemName == DataService.instance.shopInventory[3].itemName{
            do{
                try realm.write {
                    player.shaurmaEaten(min: 25, max: 45)
                }
            } catch{
                print("Error saving \(error)")
            }
        } else if selectedItemName == DataService.instance.shopInventory[4].itemName{
            do{
                try realm.write {
                    player.victory()
                }
            } catch{
                print("Error saving \(error)")
            }
        }
        deleteSetItem(atIndex: indexPath.row)
        dismiss(animated: true, completion: nil)
    }
    
    
    func loadStash(){
        itemStash = realm.objects(Stash.self)
        tableView.reloadData()
    }
    
    func deleteSetItem(atIndex: IndexPath.Index){
        if let setItem = itemStash?[atIndex]{
            do{
                try self.realm.write{
                    //Delete the item from realm
                    self.realm.delete(setItem)
                }
            }catch{
                print("Error with updating the data: \(error)")
            }
        }
    }

}
