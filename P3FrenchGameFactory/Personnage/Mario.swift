//
//  Mario.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Mario : Personnage {
    init(nom: String){
        super.init (nom: "Mario", pointDevie: 100, arme: Couteau())
    }
}
