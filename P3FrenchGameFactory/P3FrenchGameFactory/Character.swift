//
//  Personnage.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation
// le personnage a un nom, des point de vie et peu attaquer un autre adversaire avec une armes

class Character {
    var name: String = ""
    var lifePoint: Int = 0
    var weapon: Weapon
    
    init (name: String, lifePoint: Int, weapon: Weapon){
        self.name = name
        self.lifePoint = lifePoint
        self.weapon = weapon
    }
// La fonction d'attaque permet a un personnage d'infliger des dommages a l'adversaire
    
// parametre cible : retour de personnage cible pour attaque
    
    func attack (target: Character) {
        target.lifePoint -= self.weapon.damage
        
// verifie si le personnage est vivant
        
        if target.lifePoint <= 0 {
            target.lifePoint = 0
            print("\(name) n'a plus de vie")
        }
// statistique de l'attaque
        print("\(self.name) attaque \(target.name) et lui a inflige \(self.weapon.damage) point de vie. \(target.name) a maintenant \(target.lifePoint) point de vie.")
    }
}
