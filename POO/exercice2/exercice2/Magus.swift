//
//  Magus.swift
//  Exercice2
//
//  Created by Jeremy viviand on 05/11/2020.
//

import Foundation
//Créer une classe Magus qui va hériter de personnage et qui va modifier les points de vie et les points d’attaque de la classe mère

class Magus: Character {
    init() {
        super.init(type: "Personnage 2", pointDeVie: 100, pointsAttaque: 5)
    }
}
