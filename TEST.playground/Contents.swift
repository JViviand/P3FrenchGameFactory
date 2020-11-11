import UIKit

class Personnage {
    var nom: String = ""
    var pointDevie: Int = 0
    var arme: Arme
    
    init (nom: String, pointDevie: Int, arme: Arme){
        self.nom = nom
        self.pointDevie = pointDevie
        self.arme = arme
    }
}
class Bowser : Personnage {
    init(nom: String){
        super.init (nom: "Bowser", pointDevie: 100, arme: Bâton())
    }
    func Presentation() {
        print("\(nom) a \(pointDevie) de point de vie et combat avec \(arme)")
    }
}
class Arme {
    var nom: String
    var dommage: Int
        
    init (nom: String, dommage: Int) {
        self.nom = nom
        self.dommage = dommage
    }
}

class Bâton : Arme {
    init(){
        super.init (nom: "Bâton", dommage: 5)
    }
}

class Joueur {
    var nombrePersonnage: Int
    var team = [Personnage]()
    var nomTeam = [String]()
    init(nombrePersonnage: Int) {
        self.nombrePersonnage = nombrePersonnage
    }
    
    func ChoixPersonnage() -> String {
        print("Merci de saisir le nom du personnage")
        if let nomPersonnage = readLine() {
            if nomTeam.contains(nomPersonnage) {
                print("le nom que vous avez choisi est deja utilisé")
                return ChoixPersonnage()
            }
            return nomPersonnage
        }
        return ChoixPersonnage()
    }
    
    func creationTeam(Personnage: Personnage) {
        print("Veuillez selectionner 3 personnage pour constituer votre equipe")
        team.append(Personnage)
        while nombrePersonnage < 3 {
            print("""
                je vous laisse choisir 3 personnage dans la liste :
                1 - \(String(describing: Bowser.Presentation))
                """)
            let choix = readLine()
            switch choix {
            case "1":
                Personnage.nom.append(ChoixPersonnage())
            default:
                print("Votre choix n'est pas valide..")
            }
        }
    }
}
