//
//  Bowser.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Bowser : Personnage {
    init(nom: String){
        super.init (nom: "Bowser", pointDevie: 100, arme: Bâton())
    }
}