//
//  Jeu.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.

class jeu {
    var joueur1 : Joueur
    var joueur2 : Joueur
    var nombreTour = 0
    var tableauJoueurMort = [Personnage]()
    
    init() {
        joueur1 = Joueur(joueurNumero: 1)
        joueur2 = Joueur(joueurNumero: 2)
    }
    // fonction pour verifier le nombre de Personnage en vie
    func joueurEnVie(joueur: Joueur) -> Bool {
      return false
    }
    // fonction pour verifer a quel tour le jeu est
    func tourDuJEu() {
    }
    //fonction de combat entre un personnage du joueur 1 et un personnage du joueur 2
    func combat() -> Void {
        
    }
    // statistique de combat
    func statistique() -> Void {
        
    }
}

