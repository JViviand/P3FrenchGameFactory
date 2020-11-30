//
//  Personnage.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation
// le personnage a un Type, un nom, des point de vie et peu attaquer un autre adversaire avec une armes

class Character {
    var type: String = ""
    var name: String = ""
    var lifePoint: Int = 0
    var weapon: Weapon
    
    init (type: String, name: String, lifePoint: Int, weapon: Weapon){
        self.type = type
        self.name = name
        self.lifePoint = lifePoint
        self.weapon = weapon
    }
// La fonction d'attaque permet a un personnage d'infliger des dommages a l'adversaire aves son armes et verifie si le personnage est vivant
    
    func attack (target: Character) {
        target.lifePoint -= self.weapon.damage
        
        if target.lifePoint <= 0 {
            target.lifePoint = 0
            print("\(name) n'a plus de vie")
        }
        print("\(self.name) attaque \(target.name) et lui a inflige \(self.weapon.damage) point de vie. \(target.name) a maintenant \(target.lifePoint) point de vie.")
    }
}
