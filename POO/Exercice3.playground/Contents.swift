//3 // Utilisation de la documentation d'Apple
//Le but de ces exercices, c'est de prendre l'habitude d'aller chercher dans la documentation d'Apple, les méthodes qui peuvent nous etre utile quand on utile un type en particulier. Par exemple, je travaille sur une chaine de caractère (String) et je veux que tous mes caractères soit en majuscule, je vais taper sur google "String Apple Swift". Le premier lien va me renvoyer sur la documentation, et je vais parcourir la documentation à la recherche d'une méthode qui fait cela.
//Si c'est le cas, je vais l'utiliser, si ce n'est pas le cas, je vais l'implémenter moi meme. Il y a toujours la possibilité de chercher ailleurs, par exemple sur StackOverflow. En tant que développeur, je ne suis pas dépendant d'une source en particulier, je dois aller chercher l'information la ou elle se trouve.

//Exercice:

/*String:

Soit la variable suivante/*

var greet: String = "Bonjour jeune Padawan"

1)trouver la méthode (fonction) qui met cette String en majuscule, appliquer la et afficher le résultat


2)trouver la méthode qui met cette String en minuscule, appliquer la et afficher le résultat


3)trouver la méthode qui renvoie le nombre de caractère dans la String


//4)
/* Tableau:

Soit le tableau de String suivant:
var student: [String] = ["Mathieu", "George", "Zozo", "Lucie", "Albert"]

1)Trouver la méthode qui enlève le dernier élèment du tableau

**2)Trouver la méthode qui permet de vérifier si un élèment est présent dans le tableau, et qui renvoit True/False selon le résultat\

3)Trouver la fonction qui va trier le tableau par ordre alphabétique

 4)Trouver la fonction qui va renversser les elements du tableau (par exemple, le premier élement sera alors à la derniere place et vice versa)/**/*/*/*/

var greet: String = "Bonjour jeune Padawan"
print(greet.uppercased())
print(greet.lowercased())
print(greet.count)

var student: [String] = ["Mathieu", "George", "Zozo", "Lucie", "Albert"]
student.removeLast()
print(student.contains("Mathieu"))
student.sort()
student.reverse()
