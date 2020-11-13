//
//  Peach.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Peach : Personnage {
    init(nom: String){
        super.init (nom: "Peach", pointDevie: 100, arme: Hâche())
    }
}
