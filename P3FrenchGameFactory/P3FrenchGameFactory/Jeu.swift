//
//  Jeu.swift
//  P3FrenchGameFactory
//
//  Created by Jeremy viviand on 11/10/2020.

class jeu {
    var joueur1 : Joueur
    var joueur2 : Joueur
    var nombreTour = 0
    var tableauJoueurMort = [Any]()
    
    init() {
        joueur1 = Joueur(joueurNumero: 1)
        joueur2 = Joueur(joueurNumero: 2)
    }
    // fonction start
    func start() {
        print("La Partie commence !!!")
        joueur1.creationTeam()
        joueur2.creationTeam()
        print("Les combats commence !!!")
        combat()
        print("La Partie est fini..")
        statistique()
    }
    // fonction pour verifier le nombre de Personnage en vie
    
    func joueurEnVie(joueur: Joueur) -> Bool {
        for(index, personnage) in joueur.team.enumerated() {
            if personnage.pointDevie <= 0 {
                tableauJoueurMort.append(personnage)
                joueur.team.remove(at: index)
                        }
            if  joueur.team.count == 0 {
                        return false
            }
        }
        return true
    }
    //fonction de combat entre un personnage du joueur 1 et un personnage du joueur 2
    
    func combat() {
        while joueurEnVie(joueur: joueur1) && joueurEnVie(joueur: joueur2) {
            print("joueur 1 c'est a toi de combattre")
            let selectionJ1 = Joueur.selectionPersonnage(joueur1)
            print("vous aller combattre avec \(String(describing: selectionJ1))")
            fight(attaque: joueur1, recoit: joueur2)
            nombreTour += 1
            if joueurEnVie(joueur: joueur2) {
                print("joueur 2 c'est a toi de combattre")
                let selectionJ2 = Joueur.selectionPersonnage(joueur2)
                print("vous aller combattre avec \(String(describing: selectionJ2))")
                fight(attaque: joueur2, recoit: joueur1)
            }
        }
    }
    // fonction pour afficher un coffre avec une armes choisit aleatoirement, le joueur vas pouvoir changer ou non son arme
    
    private func RandomArmes() -> Arme {
        let tableauArme = [Bâton(), Bouteille(), Couteau(), Hâche(), Pistolet(), Sabre()]
      return tableauArme.randomElement()!
    }
    
    func coffreAleatoire() {
        print("""
            Vous avez trouver une Nouvelle Arme, Voulez vous l'echanger avec la votre ?
            1 - OUI
            2 - NON
            """)
        let reponse = readLine()
        switch reponse {
        case "1":
            let randomName = RandomArmes()
            print("Voici votre nouvelle Arme : \(randomName)")
        case "2":
            print("Vous garder votre Arme")
        default:
            print("Votre choix n'est pas valide")
            coffreAleatoire()
        }
    }
    func fight (attaque: Joueur, recoit: Joueur) {
        if nombreTour == 2 {
            coffreAleatoire()
        }
        
    }
    
    // statistique de combat
    
    func statistique() {
        print("Ca y est toute l'equipe n'a plus de vie !")
                if joueurEnVie(joueur: joueur1) {
                    print( "Le joueur 1 a gagné !")
                } else {
                    print("Le joueur 2 a gagné !")
                }
                 print("Le nombre de tours : \(nombreTour)")
                 print("Les personnages morts sont :")
        }
}

