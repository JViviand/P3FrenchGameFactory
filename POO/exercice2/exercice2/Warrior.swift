//
//  Warrior.swift
//  Exercice2
//
//  Created by Jeremy viviand on 05/11/2020.
//

import Foundation
//Créer une classe Warrior qui va hériter de personnage et qui va modifier les points de vie et les points d’attaque de la classe mère
class Warrior: Character {
    init() {
        super.init(type: "Personnage 1", pointDeVie: 100, pointsAttaque: 10)
    }
}
