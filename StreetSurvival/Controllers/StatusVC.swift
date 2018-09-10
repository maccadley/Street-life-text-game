//
//  ViewController.swift
//  StreetSurvival
//
//  Created by Admin on 21.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import UIKit
import RealmSwift

class StatusVC: UIViewController {
    
    //MARK: - Labels and vars
    var player = Player()
    let realm = try! Realm()
    
    let messageBank = MessageBank()
    
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var actionButtonOutlet: UIButton!
    @IBOutlet weak var shopButtonOutlet: UIButton!
    @IBOutlet weak var inventoryButtonOutlet: UIButton!
    @IBOutlet weak var newGameButtonOutLet: UIButton!
    @IBOutlet weak var textMessageField: UITextView!
    @IBOutlet weak var healthLbl: UILabel!
    @IBOutlet weak var hungryLbl: UILabel!
    @IBOutlet weak var moneyLbl: UILabel!
    @IBOutlet weak var statusChangedLabel: UILabel!
    
    
    //MARK: - View didLoad and WillAppear
    override func viewDidLoad() {
        super.viewDidLoad()
        actionButtonOutlet.isHidden = true
        shopButtonOutlet.isHidden = true
        inventoryButtonOutlet.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        healthLbl.text = String(player.health)
        hungryLbl.text = String(player.hungry)
        moneyLbl.text = String(player.money)
        textMessageField.text = messageBank.listOfMessages[player.messageStatus].textMessage
        statusChangedLabel.text = "Health changed by: \(player.healthChanged) hungry: \(player.hungryChanged) money: \(player.moneyChanged)"
        if player.health < 1 || player.hungry < 1 || player.money < 1{
            PlayerIsDeath()
        }
        if player.health > 100{
            do{
                try realm.write {
                    player.health = 100
                    statusChangedLabel.text = "You health is maximum!!"
                }
            } catch{
                print("Error saving \(error)")
            }
        }
        if player.hungry > 100 {
            do{
                try realm.write {
                    player.hungry = 100
                    statusChangedLabel.text = "You hungry is maximum!!"
                }
            } catch{
                print("Error saving \(error)")
            }
        }
    }

    @IBAction func testButton(_ sender: UIButton) {
        do{
            try realm.write {
                player.healthIncrease(min: 1, max: 2)
                player.hungryIncrease(min: 1, max: 2)
                self.statusChangedLabel.text = "H: \(player.healthChanged) Hun: \(player.hungryChanged), M: \(player.moneyChanged)"
                self.healthLbl.text = String(player.health)
                self.hungryLbl.text = String(player.hungry)
            }
        } catch{
            print("Error saving \(error)")
        }
        
    }
    
    @IBAction func newGameBtn(_ sender: Any) {
        if realm.objects(Player.self).count > 0{
            loadGame()
        } else {
        newGameStart()
        }
        newGameButtonOutLet.isHidden = true
    }
    
    func newGameStart(){
        
        var textField = UITextField()
        let alert = UIAlertController(title: "Name yourself!", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Start the game", style: .default) { (action) in
            // what will happen once User hits add item
            self.player.name = textField.text!
            self.playerName.text = textField.text!
            self.player.gameHasStarted = true
            self.textMessageField.text = self.messageBank.listOfMessages[0].textMessage
            self.save(category: self.player)
        }
        alert.addTextField { (alertTexField) in
            alertTexField.placeholder = "What's your name?"
            textField = alertTexField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        actionButtonOutlet.isHidden = false
        shopButtonOutlet.isHidden = false
        inventoryButtonOutlet.isHidden = false
        healthLbl.text = String(player.health)
        hungryLbl.text = String(player.hungry)
    }
    
    func loadGame(){
        player = realm.objects(Player.self).last!
        healthLbl.text = String(player.health)
        hungryLbl.text = String(player.hungry)
        playerName.text = player.name
        textMessageField.text = messageBank.listOfMessages[1].textMessage
        actionButtonOutlet.isHidden = false
        shopButtonOutlet.isHidden = false
        inventoryButtonOutlet.isHidden = false
    }
    
    func save(category: Player){
        do{
            try realm.write {
                realm.add(category)
            }
        } catch{
            print("Error saving \(error)")
        }
    }
    
    //TODO : Refactor this part
    func PlayerIsDeath(){
        textMessageField.text = messageBank.listOfMessages[10].textMessage
        actionButtonOutlet.isHidden = true
        shopButtonOutlet.isHidden = true
        inventoryButtonOutlet.isHidden = true
        newGameButtonOutLet.isHidden = false
        
        var textField = UITextField()
        let alert = UIAlertController(title: "You have died!", message: "You died in accident, would you start again?", preferredStyle: .alert)
        let action = UIAlertAction(title: "yeah-yeah", style: .default) { (action) in
            do{
                try self.realm.write {
                    self.realm.delete(self.player)
                }
            } catch{
                print("Error saving \(error)")
            }
            // what will happen once User hits add item
            self.player = Player()
            self.player.name = textField.text!
            self.playerName.text = textField.text!
            self.save(category: self.player)
            self.healthLbl.text = String(self.player.health)
            self.hungryLbl.text = String(self.player.hungry)
            self.moneyLbl.text = String(self.player.money)
            self.newGameButtonOutLet.isHidden = true
            //TODO: добавить удаление инвентаря.
        }
        alert.addTextField { (alertTexField) in
            alertTexField.placeholder = "What's your name, again?"
            textField = alertTexField
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        actionButtonOutlet.isHidden = false
        shopButtonOutlet.isHidden = false
        inventoryButtonOutlet.isHidden = false

    }
}

