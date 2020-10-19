//
//  Personnage.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Personnage {
    var nom: String = ""
    var pointDevie: Int = 0
    var attaquer: Int = 0
    
    init (nom: String, pointDevie: Int, attaquer: Int){
        self.nom = nom
        self.pointDevie = pointDevie
        self.attaquer = attaquer
    }
    func Attaquer() -> String {
        return("attaquer")
    }
    func Subiattaque() -> String {
      return("subi attaque")
    }
}
