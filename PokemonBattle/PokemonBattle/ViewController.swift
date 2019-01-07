//
//  ViewController.swift
//  PokemonBattle
//
//  Created by guest on 2018/11/26.
//  Copyright © 2018年 Ledharni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    private var battleField: BattleField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pidgey = Pidgey(level: 5)
        let pikachu = Pikachu(level: 5)
        
        textView.text = ""
        
        self.battleField = BattleField(wildPokemon: pidgey, tamePokemon: pikachu, textView: textView)
        self.battleField?.start()
        
//        pikachu.doAbility(to: pidgey)
//        pidgey.displayStatus()
//
//        pidgey.doAbility(to: pikachu)
//        pikachu.displayStatus()
        
    }

    @IBAction func attackAction(_ sender: UIButton) {
        
        self.battleField?.attack()
        
    }
    
}

