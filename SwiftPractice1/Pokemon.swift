//
//  Pokemon.swift
//  SwiftPractice1
//
//  Created by guest on 2018/12/17.
//  Copyright © 2018年 Ledharni. All rights reserved.
//

import Foundation

class Pokemon {
    
    let name: String
    var level: Int
    let health: Int
    let ability: Ability
    
    init(name: String,level: Int, ability: Ability) {
        self.name = name
        self.level = level
        self.health = level * 2
        self.ability = ability
    }
    
    func doAbility() {
        print("\(self.name)は\(ability.name)を使った！")
    }
    
    
    func displayStatus() {
        
        print("name: \(self.name) level: \(self.level) Hp: \(self.health)")
    }
}

struct Ability {
    
    let name: String
    let damege:Int
    
    init(name: String, damege: Int) {
        self.name = name
        self.damege = damege
    }
}

