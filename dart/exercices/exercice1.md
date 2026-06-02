# ENNONCER 1
[ 01 ] - PROJET DE FIN DU MOIS DART

## Ecrivez un simulateur de robot.

Les installations d'essai d'une usine de robots ont besoin d'un programme pour vérifier les mouvements des robots.

Les robots ont trois mouvements possibles:

- Tournez à droite (D)
- Tourner à gauche (G)
- avance (A)  
Les robots sont placés sur une grille infinie hypothétique, face à une direction particulière (nord, est, sud ou ouest) à un ensemble de coordonnées {x, y}, par exemple {3,8}, avec des coordonnées croissantes vers le nord et l'est .

Le robot reçoit alors un certain nombre d'instructions, à quel point l'installation de test vérifie la nouvelle position du robot et dans quelle direction il pointe.

La chaîne de lettres "DAAGAG" signifie:
- Tournez à droite (D)
- Avancez deux fois (AA)
- Tournez à gauche (G)
- Avancez une fois (A)
- Tourner encore à gauche (G)
Supposons qu'un robot commence à {7, 3} face au nord. Ensuite, l'exécution de ce flux d'instructions devrait le laisser à {9, 4} face à l'ouest.

## Tests a simmuler 
###########################################

# creation d'instance d'objet
1 - creer robot1 et placer ce robot au point d'horigine (0,0) orienter vers la face nord
1 - creer robot2 et placer ce robot au point d'horigine (0,-1) orienter vers la face nord

# changement de position 
1 - changer la position des robots 1 et 2 vers la la face est
2 - Puis de l'est vers l'ouest

# Serie d'instruction 
1 - Du point de coordonneer (7,3) face nord,
Vérifie la nouvelle position du robot et dans quelle direction il pointe
instruction : DAAGAG

2 - Du point de coordonneer (2,-7) face ouest,
Vérifie la nouvelle position du robot et dans quelle direction il pointe.
instruction : DDAAAAAGA

3 - Du point de coordonneer (8,4) face sud,
Vérifie la nouvelle position du robot et dans quelle direction il pointe .
instruction : GAAADDDAGGGG

