
void main() {

  //****
  // COMMENT FAIRE UNE CONDITION AVEC IF ELSE
  // */

	var salary = 25000;

	if (salary > 20000) { // true ou false
		print("Vous avez une promotion. Felicitation !");
	} else {
		print("Vous devez travailler dur !");
	}

  int a = 2;
  int b = 3;

  int petit_nombre = a < b ? a : b; // a < b = true alors je retourne a
  // int nombre = a > b ? a : b; // a < b = fqlse alors je retourne b
  print("$petit_nombre est plus petit");

  if (a < b) {
    print(a);
  }else{
    print(a);
  }

	// IF ELSE IMBRIQUER
	// var grades = 70;

	// if (grades >= 90 && grades < 100) { // faux et vrai => faux
	// 	print("A+ grade");
	// } else if (grades >= 80 && grades < 90) { // faux et v => f
	// 	print("A grade");
	// } else if (grades >= 70 && grades < 80) { // vrai et vrai => Vrai => B grade
	// 	print("B grade");
	// } else if (grades >= 60 && grades < 70) {
	// 	print("C grade");
	// } else if (grades > 30 && grades < 60) {
	// 	print("D grade");
	// } else if (grades >= 0 && grades < 30) {
	// 	print("Vous avez echouer");
	// } else {
	// 	print("Il n'y a pas de grade disponible pour vous !");
	// }
}