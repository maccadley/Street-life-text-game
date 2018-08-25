//
//  Player.swift
//  StreetSurvival
//
//  Created by Admin on 21.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import Foundation
import RealmSwift

class Player: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var health = 100
    @objc dynamic var hungry = 100
    @objc dynamic var money = 20
    
    @objc dynamic var healthChanged = 0
    @objc dynamic var hungryChanged = 0
    @objc dynamic var moneyChanged = 0
    
    @objc dynamic var messageStatus = 0
    
    @objc dynamic var gameHasStarted = false
    
    @objc dynamic var isArmored = false
    
    var playerStash = List<Stash>()
    
//    func updateStash(){
//        return Results<Stash>!
//    }
    
    func healthIncrease(min: Int, max: Int){
        let healthIncreasedBy = NumberGenerator(min: min, max: max)
        healthChanged = healthIncreasedBy
        health += healthIncreasedBy
    }
    
    func healthLose(min: Int, max: Int){
        let healthLossBy = NumberGenerator(min: min, max: max)
        healthChanged = healthLossBy
        health -= healthLossBy
    }
    
    func hungryIncrease(min: Int, max: Int){
        let hungryIncreaseBy = NumberGenerator(min: min, max: max)
        hungryChanged = hungryIncreaseBy
        hungry += hungryIncreaseBy
    }
    
    func hungryLose(min: Int, max: Int){
        let hungryLossBy = NumberGenerator(min: min, max: max)
        hungryChanged = hungryLossBy
        hungry -= hungryLossBy
    }
    
    func moneyIncrease(min: Int, max: Int){
        let moneyIncreasedBy = NumberGenerator(min: min, max: max)
        moneyChanged = moneyIncreasedBy
        money += moneyIncreasedBy
    }
    
    func moneyLoss(min: Int, max: Int){
        let moneyLossBy = NumberGenerator(min: min, max: max)
        moneyChanged = moneyLossBy
        money -= moneyLossBy
    }
    
    func NumberGenerator(min: Int, max: Int) -> Int{
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }
    
    //Используем предметы
    
    func drinkBeer(min: Int, max: Int){
        healthIncrease(min: min, max: max)
        hungryIncrease(min: min, max: max)
        messageStatus = 11
    }
    
    func naftizinUsage(min: Int, max: Int){
        healthIncrease(min: min, max: max)
        messageStatus = 12
    }
    
    func stickArmor(){
        isArmored = true
        messageStatus = 13
    }
    
    func shaurmaEaten(min: Int, max: Int){
        healthIncrease(min: min, max: max)
        hungryIncrease(min: min, max: max)
        messageStatus = 14
    }
    
    func victory(){
        messageStatus = 15
    }
    
    
}
