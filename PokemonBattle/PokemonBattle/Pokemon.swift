//
//  Pokemon.swift
//  PokemonBattle
//
//  Created by guest on 2018/11/26.
//  Copyright © 2018年 Ledharni. All rights reserved.
//

import Foundation

class Ability{
    let name: String
    let damege:Int
    
    init(name: String, damege: Int) {
        self.name = name
        self.damege = damege
    }
    
}


class Pokemon {
    
    let name: String //pokemon's name
    let ability:Ability
    
    fileprivate(set) var level: Int   //pokemon's level
    fileprivate(set) var health: Int = 1  //pokemon's hit point
    
    fileprivate var healthFactor: Int {
        return 1
    }
    fileprivate var baseHealth: Int{
        return 10
    }
    
    //瀕死になったか?
    var isDying: Bool{
        return self.health <= 0
    }
    
    
    init(name: String, level: Int, ability: Ability) {
        self.name = name
        self.level = level
        self.ability = ability
        self.health = baseHealth + level * healthFactor
    }
    
    func getStatus() -> String {
        
        return """
        \(self.name) Lv. \(self.level)
        HP: \(self.health)
        
        """
        //        print("Name: \(self.name)")
        //        print("Lv: \(self.level)" )
        //        print("Hp: \(self.health)")
    }
    
    func doAbility(to pokemon: Pokemon) -> String {
        
        pokemon.health -= self.ability.damege
        return "\(self.name)の\(self.ability.name)!\n"
    }
}


class Pidgey: Pokemon {
    
    override var healthFactor: Int {
        return 2
    }
    override var baseHealth: Int {
        return 12
    }
    
    init(level: Int) {
        
        let ability = Ability(name: "かぜおこし", damege:12)
        super.init(name: "ポッポ", level: level, ability: ability)
    }
}


class Pikachu: Pokemon {
    
    override var healthFactor: Int {
        return 2
    }
    override var baseHealth: Int {
        return 12
    }
    init(level: Int) {
        let ability = Ability(name: "でんきショック", damege:12)
        super.init(name: "ピカチュウ", level: level, ability: ability)
    }
    
}


