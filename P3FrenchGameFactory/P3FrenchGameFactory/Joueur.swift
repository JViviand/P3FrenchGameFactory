//
//  Joueur.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Joueur {
    var joueurNumero: Int
    var team = [Personnage]()
    var nomTeam = [String]()
    var nomPerso = [String]()
    init(joueurNumero: Int) {
        self.joueurNumero = joueurNumero
        }
        
    private func NomEquipe() -> String {
            print("Merci de saisir le nom de votre équipe")
            if let nomDeEquipe = readLine() {
                if nomTeam.contains(nomDeEquipe) {
                    print("le nom que vous avez choisi est deja utilisé")
                    return NomEquipe()
                }
                return nomDeEquipe
            }
            return NomEquipe()
        }
    
    func nomPersonnage() -> String {
        print("je vous laisse choisir un nouveau nom a ce personnage")
        if let nomDuPersonnage = readLine() {
            if nomPerso.contains(nomDuPersonnage) {
                print("le nom que vous avez choisi est deja utilisé")
                return nomPersonnage()
            }
            return nomDuPersonnage
        }
        return nomPersonnage()
    }

    func creationTeam() {
        // je veut que le joueur puisse afficher le nom de l'equipe avec la fonction NomEquipe
        let nomEquipeEcrire = NomEquipe()
        print(nomEquipeEcrire)
        
        while team.count < 3 {
                print("""
                    je vous laisse choisir 3 personnage dans la liste :
                    1 - Bowser avec 100 point de vie et combat avec un bâton
                    2 - Luigi avec 100 point de vie et combat avec une bouteille
                    3 - Mario avec 100 point de vie et combat avec un couteau
                    4 - Peach avec 100 point de vie et combat avec une hâche
                    5 - Toad avec 100 point de vie et combat avec un pistolet
                    6 - Yoshi avec 100 point de vie et combat avec un sabre
                    """)
            let choix = readLine()
            switch choix {
            case "1":
                print("tu as choisi Bowser")
                let nomHero = nomPersonnage()
                print(nomHero)
                team.append(Bowser(nom: "Bowser"))
            case "2":
                print("tu as choisi Luigi")
                let nomHero = nomPersonnage()
                print(nomHero)
                team.append(Luigi(nom: "Luigi"))
            case "3":
                print("tu as choisi Mario")
                let nomHero = nomPersonnage()
                print(nomHero)
                team.append(Mario(nom: "Mario"))
            case "4":
                print("tu as choisi Peach")
                let nomHero = nomPersonnage()
                print(nomHero)
                team.append(Peach(nom: "Peach"))
            case "5":
                print("tu as choisi Toad")
                let nomHero = nomPersonnage()
                print(nomHero)
                team.append(Toad(nom: "Toad"))
            case "6":
                print("tu as choisi Yoshi")
                let nomHero = nomPersonnage()
                print(nomHero)
                team.append(Yoshi(nom: "Yoshi"))
            default:
                print("Votre choix n'est pas valide..")
            }
        }
    }
    // fonction qui vas afficher un des 3 personnage selectionner aleatoirement qui vas combattre
    func selectionPersonnage(team: [Personnage]) -> Personnage {
        print("un des 3 personnage choisi vas combattre")
        return team.randomElement()!
    }
}
