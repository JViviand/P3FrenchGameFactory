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
}
