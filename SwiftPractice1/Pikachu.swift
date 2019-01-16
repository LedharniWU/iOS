//
//  Pikachu.swift
//  SwiftPractice1
//
//  Created by guest on 2019/01/15.
//  Copyright © 2019年 Ledharni. All rights reserved.
//

import Foundation

class Pikachu: Pokemon {

    init(level: Int){
        super .init(name: "Pikachu", level: level, ability:Ability(name:"でんきショック", damege: 10))
    }
    
    func levelUp(){
        self.level += 1
        displayStatus()
    }
    
    
}
