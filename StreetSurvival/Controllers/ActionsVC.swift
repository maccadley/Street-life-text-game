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
        do{
            try realm.write {
                player.healthIncrease(min: 3, max: 8)
                player.hungryLose(min: 5, max: 15)
                player.messageStatus = 2
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func searchInGarbage(_ sender: UIButton) {
        do{
            try realm.write {
                player.hungryLose(min: 10, max: 20)
                player.moneyIncrease(min: 7, max: 20)
                player.messageStatus = 3
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func askForMoney(_ sender: UIButton) {
        do{
            try realm.write {
                player.hungryLose(min: 15, max: 24)
                player.moneyIncrease(min: 10, max: 20)
                player.messageStatus = 4
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goSleep(_ sender: UIButton) {
        do{
            try realm.write {
                player.health = 100
                player.hungryIncrease(min: 20, max: 30)
                player.messageStatus = 5
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func screamOnStreet(_ sender: UIButton) {
        do{
            try realm.write {
                player.hungryLose(min: 8, max: 20)
                player.healthLose(min: 3, max: 8)
                player.messageStatus = 6
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goFight(_ sender: UIButton) {
        do{
            try realm.write {
                player.healthLose(min: 30, max: 40)
                player.moneyLoss(min: 30, max: 80)
                player.messageStatus = 7
            }
        } catch{
            print("Error saving \(error)")
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goWork(_ sender: UIButton) {
        do{
            try realm.write {
                player.healthLose(min: 30, max: 40)
                player.moneyIncrease(min: 50, max: 100)
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
