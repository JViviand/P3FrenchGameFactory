//
//  Dragon.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 22/11/2020.
//

import Foundation

// le dragon herite de la classe character

class Dragon : Character {
    init(nameDragon: String){
        super.init (type: "Dragon", name: nameDragon, lifePoint: 100, weapon: Fire())
    }
}
