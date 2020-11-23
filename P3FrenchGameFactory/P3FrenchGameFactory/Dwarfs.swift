//
//  Dwarfs.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 22/11/2020.
//

import Foundation

// dwarfs herite de la class character

class Dwarfs : Character {
    init(nameDwarfs: String){
        super.init (type: "Dwarfs", name: nameDwarfs, lifePoint: 100, weapon: Sword())
    }
}
