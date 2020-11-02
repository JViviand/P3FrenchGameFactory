//
//  Armes.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation
// les armes ont un nom et inflige des dommages a un autre personnage

class Armes {
    var nom: String
    var dommage: Int
    
    init (nom: String, dommage: Int) {
        self.nom = nom
        self.dommage = dommage
    }
    
}
