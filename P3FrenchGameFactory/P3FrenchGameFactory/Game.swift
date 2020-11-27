//
//  Game.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.

class Game {
    var player1 : Player
    var player2 : Player
    var nomberRounds = 0
    var arrayDeadPlayer = [Character]()
    
    init() {
        player1 = Player(playerNumber: 1)
        player2 = Player(playerNumber: 2)
    }
    // fonction start
    func start() {
        player1.createTeam()
        player2.createTeam()
        print("Les combats commence !!!")
        combat()
        print("La Partie est fini..")
        statistics()
    }
    // fonction pour verifier le nombre de Personnage en vie
    
    func playerAlive(player: Player) -> Bool {
        for(index, character) in player.teamCharacter.enumerated() {
            if character.lifePoint <= 0 {
                arrayDeadPlayer.append(character)
                player.teamCharacter.remove(at: index)
                        }
            if  player.teamCharacter.count == 0 {
                        return false
            }
        }
        return true
    }
    //fonction de combat entre un personnage du joueur 1 et un personnage du joueur 2
    
    func combat() {
        while playerAlive(player: player1) && playerAlive(player: player2) {
            if playerAlive(player: player1) {
                print("joueur 1 c'est a toi de combattre !")
                fight(attack: player1, receives: player2)
                nomberRounds += 1
            } else if playerAlive(player: player2) {
                print("joueur 2 c'est a toi de combattre !")
                fight(attack: player2, receives: player1)
                nomberRounds += 1
            }
        }
    }
    // fonction qui propose au joueur de choisir ou non une nouvelle arme pour combattre
    
    func newWeapon() {
        while <#condition#> {
            <#code#>
        }
    }
    func mysteryBox() {
        _ = Weapon.init(name: "Magic", damage: 40)
        
        print("""
            Vous avez trouver une Nouvelle Arme: Magic qui enleve 40 de dommage,
            Voulez vous l'echanger avec la votre ?
            1 - OUI
            2 - NON
            """)
        let answer = readLine()
        switch answer {
        case "1":
            print("Vous avez echanger votre Arme")
            
        case "2":
            print("Vous garder votre Arme")
        default:
            print("Votre choix n'est pas valide")
            mysteryBox()
        }
    }
    func fight (attack: Player, receives: Player) {
        print("Choisi ton combattant :")
        let attackPlayer = attack.selectCharacter(team: attack.teamCharacter)
        print("choisi ton ennemi :")
        let receivesplayer = receives.selectCharacter(team: receives.teamCharacter)
        attackPlayer.attack(target: receivesplayer)
        
    }
    
    // statistique de combat
    
    func statistics() {
        print("Ca y est toute l'equipe n'a plus de combattant !")
                if playerAlive(player: player1) {
                    print( "Le joueur 1 a gagné !")
                } else {
                    print("Le joueur 2 a gagné !")
                }
                 print("Le nombre de tours : \(nomberRounds)")
        print("Les personnages morts sont :")
        for deadCharacter in arrayDeadPlayer {
        print("Le personnage \(deadCharacter.name) qui est \(deadCharacter.type)")
        }
    }
}
