//
//  Elf.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 22/11/2020.
//

import Foundation

// l'elfe herite de la class character

class Elf : Character {
    init(name: String){
        super.init (name: "Elf", lifePoint: 100, weapon: Arc())
    }
}
