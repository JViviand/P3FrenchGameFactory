//
//  Luigi.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Luigi : Personnage {
    init(nom: String){
        super.init (nom: "Luigi", pointDevie: 100, arme: Bouteille())
    }
}
