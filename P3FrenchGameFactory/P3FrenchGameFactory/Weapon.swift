//
//  Weapon.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

// les armes ont un nom et inflige des dommages a un autre personnage

class Weapon {
    var name: String
    var damage: Int
    
    init (name: String, damage: Int) {
        self.name = name
        self.damage = damage
    }
    
}
