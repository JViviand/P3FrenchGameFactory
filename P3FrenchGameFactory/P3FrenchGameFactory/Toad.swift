//
//  Toad.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Toad : Personnage {
    init(nom: String){
        super.init (nom: "Toad", pointDevie: 100, arme: Pistolet())
    }
    func Presentation() {
        print("\(nom) a \(pointDevie) de point de vie et combat avec \(arme)")
    }
    
}
