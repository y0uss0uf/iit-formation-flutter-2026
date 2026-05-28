
// Objectifs
// 1. Inheritage avec Constructeur par Defaut
// 2. Inheritage avec Constructeur par Nommee

void main() {

	var dog1 = Dog("Labrador", "Black");

	print("");

	var dog2 = Dog("Pug", "Brown");

	print("");

	var dog3 = Dog.myNamedConstructor("German Shepherd", "Black-Brown");
}

class Animal {

	String? color;

// lE CONSTRUCTEUR A LE MEME NOM QUE LE CLASS
	Animal(String color) {
		this.color = color;
		print("Animal class constructeur");
	}

// UN CONSTRUCTEUR NOMMER EN DART COMMENCE PAR LE NOM DE LA CLASSE PUIS UN  AUTRE NOM MAIS IL OCTIONNE
// PAREILELLEMENT
	Animal.myAnimalNamedConstrctor(String color) {
		print("Animal class constructor nommee");
	}
}

class Dog extends Animal {

	String? race;
// Permet de copier le constrcuteur du parent tel que ses son attribut couleur ou color
	Dog(String race, String color) : super(color) {
		this.race = race;
		print("Dog class constructeur");
	}

	Dog.myNamedConstructor(String race, String color) : super.myAnimalNamedConstrctor(color) {
		this.race = race;
		print("Dog class class constructor nommee");
	}
}
