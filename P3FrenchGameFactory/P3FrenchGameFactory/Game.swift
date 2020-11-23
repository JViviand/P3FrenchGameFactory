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
        statistique()
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
        for playerCounter in (0..<Game.maximumPlayers) {
        //                let currentPlayer = players[playerCounter]
        //                let ennemiPlayer = players[playerCounter == 0 ? 1 : 0]
        //                print("C'est au tour du joueur\(playerCounter + 1) de jouer")
        //                print("Tape l'index qui correspond au numéro de ton personnage que tu veux utiliser")
        //                displayCurrentTeam(for: currentPlayer)
        //                for _ in (0..<currentPlayer.characters.count) {
        //                    let character = chooseCharacter(for: currentPlayer)
        //                    selectAttack(with: currentPlayer, character: character, versus: ennemiPlayer)
        //                }
        //            }
        
        
        
        while playerAlive(player: player1) && playerAlive(player: player2) {
            print("joueur 1 c'est a toi de combattre")
            let selectionJ1 = Player.selectCharacter(player1)
            print("vous aller combattre avec \(String(describing: selectionJ1))")
            fight(attack: player1, receives: player2)
            nomberRounds += 1
            if playerAlive(player: player2) {
                print("joueur 2 c'est a toi de combattre")
                let selectionJ2 = Player.selectCharacter(player2)
                print("vous aller combattre avec \(String(describing: selectionJ2)))")
                fight(attack: player2, receives: player1)
            }
        }
    }
    // fonction qui propose au joueur de choisir ou non une nouvelle arme pour combattre
    
    private func newWeapon() -> Weapon {
        let magic = Weapon.init(name: "Magic", damage: 40)
      return magic
    }
    
    func mysteryBox() {
        print("""
            Vous avez trouver une Nouvelle Arme, Voulez vous l'echanger avec la votre ?
            1 - OUI
            2 - NON
            """)
        let answer = readLine()
        switch answer {
        case "1":
            let newMagic = newWeapon()
            print("Voici votre nouvelle Arme : \(newMagic)")
        case "2":
            print("Vous garder votre Arme")
        default:
            print("Votre choix n'est pas valide")
            mysteryBox()
        }
    }
    func fight (attack: Player, receives: Player) {
        let attackPlayer = attack.selectCharacter(team: attack.teamCharacter)
        let receivesplayer = receives.selectCharacter(team: receives.teamCharacter)
        attackPlayer.attack(target: receivesplayer)
        if nomberRounds == 2 {
            mysteryBox()
        }
    }
    
    // statistique de combat
    
    func statistique() {
        print("Ca y est toute l'equipe n'a plus de combattant !")
                if playerAlive(player: player1) {
                    print( "Le joueur 1 a gagné !")
                } else {
                    print("Le joueur 2 a gagné !")
                }
                 print("Le nombre de tours : \(nomberRounds)")
        print("Les personnages morts sont : \(arrayDeadPlayer)")
        }
 }
