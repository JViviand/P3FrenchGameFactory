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
    var arme: Arme
    
    init (nom: String, pointDevie: Int, arme: Arme){
        self.nom = nom
        self.pointDevie = pointDevie
        self.arme = arme
    }
    // La fonction d'attaque permet a un personnage d'infliger des dommages a l'adversaire
    // parametre cible : retour de personnage cible pour attaque
    func Attaquer(cible: Personnage) {
        cible.pointDevie -= self.arme.dommage
        // verifie si le personnage est vivant
        if cible.pointDevie <= 0 {
            cible.pointDevie = 0
            print("\(nom) n'a plus de vie")
        }
        // statistique de l'attaque
        print("\(self.nom) attaque \(cible.nom) et lui a inflige \(self.arme.dommage) point de vie. \(cible.nom) a maintenant \(cible.pointDevie) point de vie.")
    }
}
