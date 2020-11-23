//
//  Player.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.
//

import Foundation

class Player {
    var playerNumber: Int
    var teamCharacter = [Character]()
    var newNameCharacter = [String]()
    init(playerNumber: Int) {
        self.playerNumber = playerNumber
        }
    
    func nameCharacter() -> String {
        if let characterWrite = readLine() {
            if newNameCharacter.contains(characterWrite.lowercased()) {
                print("Je vous laisse choisir un nom qui n'existe pas encore !")
                return nameCharacter()
            }
            return characterWrite.lowercased()
        }
        return nameCharacter()
    }

    func createTeam() {
        
        while teamCharacter.count < 3 {
                print("""
                    joueur numero \(playerNumber), je vous laisse choisir 3 personnage dans la liste :
                    1 - Le Dragon combat avec 100 point de vie et attaque avec du Feu
                    2 - L'elf combat avec 100 point de vie et attaque avec un Arc
                    3 - Le Nain combat avec 100 point de vie et attaque avec une Epée
                    """)
            let choice = readLine()
            switch choice {
            case "1":
                print("Tu as choisi Le Dragon, donne-lui un nom :")
                let nameHero = nameCharacter()
                let charactere = Dragon.init(nameDragon: nameHero)
                teamCharacter.append(charactere)
                newNameCharacter.append(nameHero)
            case "2":
                print("Tu as choisi L'Elf, donne-lui un nom :")
                let nameHero = nameCharacter()
                let charactere = Elf.init(nameElf: nameHero)
                teamCharacter.append(charactere)
                newNameCharacter.append(nameHero)
            case "3":
                print("Tu as choisi Le Nain, donne-lui un nom :")
                let nameHero = nameCharacter()
                let charactere = Dwarfs.init(nameDwarfs: nameHero)
                teamCharacter.append(charactere)
                newNameCharacter.append(nameHero)
            default:
                print("Votre choix n'est pas valide..")
            }
        }
    }
//
    func selectCharacter(team: [Character]) -> Character  {
            for (index, character) in teamCharacter.enumerated() {
                print("Le personnage \(index + 1) s'appelle \(character.name) et est un \(character.type)")
                }
            if let choice = readLine() {
                if let choiceInt = Int(choice) {
                            if choiceInt >= 1 && choiceInt <= team.count {
                            return team[choiceInt - 1]
                    }
                }
            }
        return selectCharacter(team: team)
    }
}
