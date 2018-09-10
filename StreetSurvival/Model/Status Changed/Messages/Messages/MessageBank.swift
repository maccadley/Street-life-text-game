//
//  MessageBank.swift
//  StreetSurvival
//
//  Created by Admin on 21.08.2018.
//  Copyright © 2018 MaximMasov. All rights reserved.
//

import Foundation

class MessageBank {
    var listOfMessages = [Status]()
    
    init(){
        //Game start index 0-1
        listOfMessages.append(Status(message: "Suddenly, a unknown person entered the city. He's dirty, stinky and looks terrible, but he is sure to get over the city. The main goal is to earn money, and buy a small Truck. Money will be spent on health and hungry, and weapon also. The game is finished as you buy it. Good luck!"))
        
        listOfMessages.append(Status(message: "As you return from you interesting real life (not), the game is continue"))
       
        //Action buttons, 2-9. 8-9
        //2
        listOfMessages.append(Status(message: "Walking down the street you felt very weak, and decided to take a rest for a while. You sat near some caffee, closed your eyes, and even started snoring. Suddenly, you felt cold and damp. You oppened your eyes and noticed it began to rain. Quite unpleasent, but what do you suppose to fell being on the street?"))
        
        //3
        listOfMessages.append(Status(message: "The scapyard is dirty (like you) and smells awfull (Just like you). Anyway, you found a few coins on the bottom. It's surely will be spent on booz."))
        
        //4
        listOfMessages.append(Status(message: "Walking down the street, suddenly you found out, that you don't have much money (what a surprise!). You decided to sit down and ask for some people's charity. You took off your hat, placed it in front of yourself, and write on some carton box's scrap \"Gimmy som many\", yeah, that would help. After a few hours, you felt like somebody kicked you, opened your eyes you saw a policeman that yelles at you. Gathering your belongings you go away."))
        
        //5
        listOfMessages.append(Status(message: "Spending a whole day for IMPORTANT things, you feel sleepy. The best decision is to sleep somewhere. You saw a heating main, and it's look like a good bed for tonight! You put you bag with IMPORTANT things in it under your head and fell asleep. You dreamed about ocean of stars, wich turned into lights of night city. And as you fell into this ocean, for a second you felt it. But it turned out, that a homeless dog was licking your face. Looks loke this dog bring you some food, it's a bit of meat on bone. Nice breakfast"))
        
        //6
        listOfMessages.append(Status(message: "Walking around, suddenly you spot two lettle demons, jumping on roof. You started shaking, and felt fear. You sharply put your finger forward and start yelling furiously. Passers-by look fightened at you, and not seeing anyone in that direction where you point. Desperate, you start to wave you hands and go to a squeal. Suddenly, everithing ends in severe pain on your nape. \"Are you crazy?\" - Some guy asked. The demons desappeared, however, no one thanks you for saving people"))
        
        //7
        listOfMessages.append(Status(message: "Moving near unknown places, you spoted your enemy - Stepan. As you don't have anything that could help you in your battle, you decided to fight with bare hands. Stepan is strong, and with only one hit, you fall back and roll lodly screeching. Some money fell off your bag. Sad..."))
        
        //8
        listOfMessages.append(Status(message: "Moving through sadly-known places, you spoted your enemy - Stepan. He looks agnry, but he doesn't see you. With your super-battle stick, you run toward Stepan, swing your stick and strike him hard as you can. Stepan yelling \"AAAHHHHH\" with strong pain. He falling on his cart with his IMPORTANT stuff. As Stepan is scared to death, he run away from you. That was huge victory of your. You get Stepan's money, but you've broken your stick"))
        
        //9
        listOfMessages.append(Status(message: "You got a night job as a security guard in local store. Not so bad. Throught a couple of hours, you recientrly spoted a man, that trying to steal the brush for the toilet. Thanks to your sharp-sighted yey, you noticed that very quicly and you stoped a thief. he beats you in your eye and drops the brush. Your boss praises you, pays for your work, but health is lost, and it hard to restore..."))
        
        //10 Death
        listOfMessages.append(Status(message: "You died by losing some of your resorses. What a mess! How could you tought it would be easy? Start game from the beggining!"))
        //Inventory use
        //11 Beer
        listOfMessages.append(Status(message: "Taking a deep breath you open a plastic bottle with beer. With opening it you can already hear the sizzle of the drink inside pleasily asking you in the throat.Liting you pull the bottle to your mouth and take a big sip.The beer is bitter, but you have not felt the taste for a long time already Only the early onset of intoxication and the restoration of lost strength are felt."))
        
        //12 Нафтизин
        listOfMessages.append(Status(message: "With your clogged nose, your head starts to hurt, and it becomes hard to breath. Taking from your pocket a nasal drops, you greedily tearing off the lid from it, you topple your head and sharply pour into the nose a different medicine. Literally in 10 seconds you again begin to feel the smell of the world around you. The chest fills the insane variety of smells of trees, flowers and clean air. But after a moment all this fades against the backdrop of your own ambre. Well, at least a little bit improved health and it became easier to breathe."))
       
        // 13 Using the stick
        listOfMessages.append(Status(message: "As you armed with this BATTLE STICK, you're already become a danger for this city. Now passing by people, they do not just shy from you (because you smell, but look around, who knows what's on your mind?) Do not look around, you slowly drag the stolen cart from the nearest shopping center with your IMPORTANT things, and go in search of an old friend - Stepan."))
        
        //14 Shaurma
        listOfMessages.append(Status(message: "Unbelievelbe, full, impossibly delicious, giant shaurma. In a magical way, in addition to restoring hunger, you also fill your health."))
        
        //15 Small truck
        listOfMessages.append(Status(message: "Victory!"))
        //16 Impossible to take a rest
        listOfMessages.append(Status(message: "You feel quite well, and you don't need to have a rest."))
        //17 Нельзя просить милостыню
        listOfMessages.append(Status(message: "Taking a seat on your favorite place for begging, it is difficult to hide the money that you have.  Passers-by notice this, and do not hurry to share with you a trifle. A couple of hours you were a little hungry, and while folded, the passing patrol kicked you in the backside. It's sad. But you deserve it with your greed!"))
        
        //18 Impossible to sleep
        listOfMessages.append(Status(message: "The eyes are still full of energy, and there is no weakness. Just so lie down and try to fall asleep it does not work. You must go and try to occupy ourselves with something!"))
        //19 Don't have enougn money
        listOfMessages.append(Status(message: "Puppy eyes are unable to pay for the purchase. And your infinite stench only aggravates the situation. The seller literally caulks the nose and waves it away from you. It is worth making some more money before you can get the desired product!"))
    }
}
