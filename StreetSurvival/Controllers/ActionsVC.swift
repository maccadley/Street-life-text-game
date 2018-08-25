//
//  ActionsVC.swift
//  StreetSurvival
//
//  Created by Admin on 21.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import UIKit
import RealmSwift

class ActionsVC: UIViewController {
    
    let realm = try! Realm()
    var player = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = realm.objects(Player.self).last!
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Actions Button
    
    @IBAction func goPee(_ sender: UIButton) {
        if player.health < 70 {
        do{
            try realm.write {
                player.healthIncrease(min: 3, max: 8)
                player.hungryLose(min: 5, max: 15)
                player.moneyChanged = 0
                player.messageStatus = 2
            }
        } catch{
            print("Error saving \(error)")
            }} else {
            do{
                try realm.write {
                    player.messageStatus = 16
                }
            } catch{
                print("Error saving \(error)")
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func searchInGarbage(_ sender: UIButton) {
        do{
            try realm.write {
                player.hungryLose(min: 10, max: 20)
                player.moneyIncrease(min: 7, max: 20)
                player.healthChanged = 0
                player.messageStatus = 3
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func askForMoney(_ sender: UIButton) {
        if player.money > 20{
        do{
            try realm.write {
                player.hungryLose(min: 15, max: 24)
                player.moneyIncrease(min: 10, max: 20)
                player.healthChanged = 0
                player.messageStatus = 4
            }
        } catch{
            print("Error saving \(error)")
            }} else {
            do{
                try realm.write {
                    player.hungryIncrease(min: 10, max: 15)
                    player.moneyChanged = 0
                    player.healthChanged = 0
                    player.messageStatus = 17
                }
            } catch{
                print("Error saving \(error)")
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goSleep(_ sender: UIButton) {
        if player.health < 70{
        do{
            try realm.write {
                player.health = 100
                player.healthChanged = 100
                player.moneyChanged = 0
                player.hungryIncrease(min: 20, max: 30)
                player.messageStatus = 5
            }
        } catch{
            print("Error saving \(error)")
            }
        } else {
            do{
                try realm.write {
                    player.messageStatus = 18
                }
            } catch{
                print("Error saving \(error)")
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func screamOnStreet(_ sender: UIButton) {
        do{
            try realm.write {
                player.hungryLose(min: 8, max: 20)
                player.healthLose(min: 3, max: 8)
                player.moneyChanged = 0
                player.messageStatus = 6
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goFight(_ sender: UIButton) {
        if player.isArmored{
            do{
                try realm.write {
                    player.isArmored = false
                    player.moneyIncrease(min: 100, max: 300)
                    player.healthChanged = 0
                    player.hungryLose(min: 10, max: 20)
                    player.messageStatus = 8
                }
            } catch{
                print("Error saving \(error)")
            }
        } else{
        do{
            try realm.write {
                player.healthLose(min: 30, max: 40)
                player.moneyLoss(min: 30, max: 80)
                player.hungryChanged = 0
                player.messageStatus = 7
            }
        } catch{
            print("Error saving \(error)")
            }}
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goWork(_ sender: UIButton) {
        do{
            try realm.write {
                player.healthLose(min: 20, max: 30)
                player.moneyIncrease(min: 80, max: 120)
                player.hungryLose(min: 15, max: 25)
                player.messageStatus = 9
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    
  
    
    //MARK: - Exit Button
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
