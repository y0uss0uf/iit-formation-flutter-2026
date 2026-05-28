
void main() {

	afficheVille("New York", "New Delhi", "Sydney");
	print("");

	affichePays("USA"); // aucun parametre optionnel n'a ete appeler
	affichePays("USA", 'BENIN'); // un parametre optionnel a ete appeler

}

// Parametre requis (obligatoir de mettre ses 3 paraetre lors de son appel)
void afficheVille(String name1, String name2, String name3) {

	print("Name 1 is $name1");
	print("Name 2 is $name2");
	print("Name 3 is $name3");
}

// Parametre optionnel
// lorsqu'on execute la fonction seul le name 1 est obligatoire 
void affichePays(String name1, [String? name2, String? name3]) {

	print("Name 1 is $name1");
	print("Name 2 is $name2");
	print("Name 3 is $name3");
}
