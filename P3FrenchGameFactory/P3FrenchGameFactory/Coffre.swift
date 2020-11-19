//
//  Coffre.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Coffre {
    func RandomArmes() -> Arme {
        let tableauArme = [Bâton(), Bouteille(), Couteau(), Hâche(), Pistolet(), Sabre()]
      return tableauArme.randomElement()!
    }
    
}
