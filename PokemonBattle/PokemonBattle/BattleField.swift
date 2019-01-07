//
//  BattleField.swift
//  PokemonBattle
//
//  Created by guest on 2018/11/28.
//  Copyright © 2018年 Ledharni. All rights reserved.
//

import UIKit

class BattleField {

    private let wildPokemon: Pokemon
    private let tamePokemon: Pokemon
    
    weak var textView:UITextView?
    
    init(wildPokemon: Pokemon, tamePokemon: Pokemon, textView: UITextView?) {
        self.wildPokemon = wildPokemon
        self.tamePokemon = tamePokemon
        self.textView = textView
    }
    
    func start() -> Void {
        
        displayStartMessage()
        displayPokemonStatus()
    }
    
    func attack(){
        
        let tamePokemonResult = tamePokemon.doAbility(to: wildPokemon)
        add(text: tamePokemonResult)
        
        if wildPokemon.isDying {
            
            displayEndMessage(loser: wildPokemon, winner: tamePokemon)
            
            return
        }
        
        let wildPokemonResult = wildPokemon.doAbility(to: tamePokemon)
        add(text: wildPokemonResult)
        
        if tamePokemon.isDying{
            
            displayEndMessage(loser: tamePokemon, winner: wildPokemon)
            
            return
        }
        
        displayPokemonStatus()
    }
    
    
    private func displayStartMessage() {
        
        let text = """
        あ、野生の\(wildPokemon.name)が現れた！
        ゆけ！\(tamePokemon.name)！
        
        """
        add(text: text)
    }
    
    private func displayPokemonStatus(){
        
        let text = """
        \(wildPokemon.getStatus())
        \(tamePokemon.getStatus())
        """
        add(text: text)
    }
    
    private func displayEndMessage(loser: Pokemon, winner: Pokemon){
        let text = """
        \(loser.name)は倒れた！
        \(winner.name)は20の経験値を得た！
        """
        
        add(text: text)
    }
    
    private func add(text: String){
        
        textView?.text.append(text)
    }
    
    
}
