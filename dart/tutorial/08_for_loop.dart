
void main() {

  //****
  // COMMENT FAIRE UNE BOUCLE
  // */

// EXEMPLE 1
// avant d'utiliser le for il faudrais savoir ou s'arreter
	// for(int i = 1; i <= 10; i++) {
  //   //print(i);
	// 	 if ( i % 2 == 0) { // la condition verifie si le nombre est paire puis l'affiche
	// 	 	print(i);
	// 	}
	// }


// EXEMPLE 2
// for ..in 
// avant d'utiliser le for.. pas besoin savoir ou s'arreter il le fera pour vous

	List planetList = ["Mercury", "Venus", "Earth", "Mars"];

  for(int i = 0; i < planetList.length; i++){
    print(i);
    print(planetList[i]);
  }

	// for (String element in planetList) {
	// 	print(element);
	// }
  //resultat

  // Mercury
  // Venus
  // Earth
  // Mars 

}
