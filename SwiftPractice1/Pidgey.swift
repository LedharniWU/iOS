//
//  Pidgey.swift
//  SwiftPractice1
//
//  Created by guest on 2019/01/15.
//  Copyright © 2019年 Ledharni. All rights reserved.
//

import Foundation
class Pidgey: Pokemon {
    
    init() {
        super.init(name: "pidgey", level: 10, ability: Ability(name: "飛ぶ", damege: 0))
    }
    func fly(){
        print("ポッポはマサラタウンへ飛んだ！")
    }
    override func displayStatus() {
        fly()
    }
}
