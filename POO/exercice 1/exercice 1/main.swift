//
//  main.swift
//  Console
//
//  Created by Jeremy viviand on 04/11/2020.
//
import Foundation
//1) Fondamentaux

//-Créer une fonction addition qui prend en paramètre deux entiers et retourne la somme de ces deux entiers

//signature de la fonction:

func addition(firstNumber: Int, secondNumber: Int) -> Int {
    //Faire l'implémentation
    return firstNumber + secondNumber
}
//-Créer une fonction substraction qui prend en paramètre deux entiers et retourne la soustraction de ces deux entiers

//signature de la fonction:

func substraction(firstNumber: Int, secondNumber: Int) -> Int {
    //Faire l'implémentation
    return firstNumber - secondNumber
}

//-Utiliser le résultat de la fonction addition dans l’un des paramètres de la fonction substraction

//Exemple

let result = addition(firstNumber: 5, secondNumber: 5)
let newResult = substraction(firstNumber: result, secondNumber: 20)

//-Créer une application console qui demande ton prénom, ton nom et ton âge, et qui t’écrit ces infos-là et te dit si tu es du 1er âge, du 2e âge ou du 3e âge

//Astuce: Il faut utiliser la fonction readline (ne marche pas sur playground, il faut donc configurer un projet mac)

print("quel est votre prenom ?")
var prenom = readLine()
print("quel est votre nom ?")
var nom = readLine()
print("quel age avez vous ?")
var age = readLine()
    

if readLine() != nil {
    print("vous vous appelez \(prenom!) \(nom!) et vous avez \(age!) ans")
}
switch age {
case 0...18:
    print("vous etes du 1er age")
case 19...30:
    print("vous etes du 2eme age")
case 31...60:
    print("vous etes de 3eme age")
default:
    print("erreur")
}
//-Créer une fonction qui prend en paramètre une liste de chiffre, et qui te retourne une nouvelle liste de chiffres composée uniquement des chiffres impairs

//Asture: regarder du coté de l'utilisation du modulo (chercher sur internet, comment
// déterminer avec le modulo comment déterminer si un nombre est pair)

//signature de la fonction:

func oldNumbers(input: [Int]) -> [Int] {
    return  oldNumbers(input: %2 = 0)
}

