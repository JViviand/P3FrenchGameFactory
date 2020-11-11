//
//  Charactere.swift
//  Exercice2
//
//  Created by Jeremy viviand on 05/11/2020.
//

import Foundation
//Créer une classe Character avec deux propriétés : points de vie et points d’attaque. Ajouter une fonction present() afin d’afficher, via la fonction print() les caractéristiques d’un personnage

class Character {
    var type: String
    var pointDeVie: Int
    var pointsAttaque: Int
    
    init(type: String,pointDeVie: Int,pointsAttaque: Int) {
        self.pointDeVie = pointDeVie
        self.pointsAttaque = pointsAttaque
        self.type = type
    }
//Enrichir la fonction present() de la classe Character, dans les classes filles Magus et Warrior pour indiquer le type du personnage

    func present() {
        print("le \(type) a comme point de vie: \(pointDeVie) et peu attaquer avec: \(pointsAttaque)")
    }
    
//Créer une nouvelle fonction sur la classe Character, qui prend en paramètre un autre Character, et qui va retourner le personnage le plus fort des deux (par exemple, le personnage qui a le plus de points d’attaque, si identique, le personnage qui a le plus de points de vie, si identique, le premier personnage)
    
    func plusFort(Character: Character) -> Character {
        if pointsAttaque != pointsAttaque {
            print("le \(type) a plus de point d'attaque que le \(type)")
        }
    }
//Créer une nouvelle fonction sur la classe Character, appelée actionOn, qui prend en paramètre un autre Character et qui va aller déduire des points de vie de ce personnage, les points d’attaque du personnage qui appelle la fonction. (par exemple, pour A.actionOn(B) : B.lifePoint ayant 10 à la fin de la fonction B aura plus que 5 dans lifePoint si A a 5 points d’attaque)
    
    func actionOn(character: Character) {
        character.pointDeVie -= character.pointsAttaque
    }

}
