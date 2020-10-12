//
//  Personnage.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Personnage {
    var nom: String
    var nombreVie: Int
    var armes: Armes
    
    init (nom: String, nombreVie: Int,armes: Armes) {
        self.nom = nom
        self.nombreVie = nombreVie
        self.armes = armes
    }
}
