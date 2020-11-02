//
//  Personnage.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation
// le personnage a un nom, des point de vie et peu attaquer un autre adversaire avec une armes

class Personnage {
    var nom: String = ""
    var pointDevie: Int = 0
    var arme: Armes
    
    init (nom: String, pointDevie: Int, arme: Armes){
        self.nom = nom
        self.pointDevie = pointDevie
        self.arme = arme
    }
    // le personnage vas avoir comme fonction d'attaquer un autre personnage avec une armes
    
}
