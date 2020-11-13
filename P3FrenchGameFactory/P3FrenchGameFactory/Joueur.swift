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
                // je veut que le choix du personnage soit ajouter dans un tableau vide
                team.append(Bowser(nom: "Bowser"))
            case "2":
                print("tu as choisi Luigi")
                team.append(Luigi(nom: "Luigi"))
            case "3":
                print("tu as choisi Mario")
                team.append(Mario(nom: "Mario"))
            case "4":
                print("tu as choisi Peach")
                team.append(Peach(nom: "Peach"))
            case "5":
                print("tu as choisi Toad")
                team.append(Toad(nom: "Toad"))
            case "6":
                print("tu as choisi Yoshi")
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
