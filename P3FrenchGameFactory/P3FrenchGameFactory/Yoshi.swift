//
//  Yoshi.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Yoshi : Personnage {
    init(nom: String){
        super.init (nom: "Yoshi", pointDevie: 100, arme: Sabre())
    }
    func Presentation() {
        print("\(nom) a \(pointDevie) de point de vie et combat avec \(arme)")
    }
    
}
