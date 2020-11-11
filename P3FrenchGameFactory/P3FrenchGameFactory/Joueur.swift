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
    var tableauPersonnage = [Any]()
    init(joueurNumero: Int) {
        self.joueurNumero = joueurNumero
        }
        
    func NomEquipe() -> String {
            print("Merci de saisir le nom de l'equipe")
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
        print("veuiller saisir le nom de votre equipe")
        // je veut que le joueur puisse afficher le nom de l'equipe avec la fonction NomEquipe
        while team.count < 3 {
                print("""
                    je vous laisse choisir 3 personnage dans la liste :
                    1 - \(String(describing: Bowser.Presentation))
                    2 - \(String(describing: Luigi.Presentation))
                    3 - \(String(describing: Mario.Presentation))
                    4 - \(String(describing: Peach.Presentation))
                    5 - \(String(describing: Toad.Presentation))
                    6 - \(String(describing: Yoshi.Presentation))
                    """)
            let choix = readLine()
            switch choix {
            case "1":
                print("tu as choisi Bowser")
                // je veut que le choix du personnage soit ajouter dans un tableau vide
                team.append(Bowser.init(nom: "Bowser"))
            case "2":
                print("tu as choisi Luigi")
                team.append(Luigi.init(nom: "Luigi"))
            case "3":
                print("tu as choisi Mario")
                team.append(Mario.init(nom: "Mario"))
            case "4":
                print("tu as choisi Peach")
                team.append(Peach.init(nom: "Peach"))
            case "5":
                print("tu as choisi Toad")
                team.append(Toad.init(nom: "Toad"))
            case "6":
                print("tu as choisi Yoshi")
                team.append(Yoshi.init(nom: "Yoshi"))
            default:
                print("Votre choix n'est pas valide..")
            }
        }
    }
    // fonction qui vas permettre au joueur de choisir un des personnage dans le tableau ou il a choisi ses 3 personnages
    func selectionPersonnage(team: [Personnage]) -> Personnage {
       
    }
}
