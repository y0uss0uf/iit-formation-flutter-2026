// Objectif comprendre et utiliser les list
// Le Premier indice d'un tableau est 0
void main() {
  List<String> pays = ["USA", "INDIA", "CHINA"];
  // Method 1 : JE CREER UN TABLEAU ET J'AJOUTE DES DONNER LORS DE SA CREATION

// La methode add permet d'ajouter un element dans la list pays
  pays.add("Nepal"); // Operation d'ajout
  pays.add("Japan");
  print(pays);

  List<int> numbersList = [];
  // Method 2: JE CREER UN TABLEAU VIDE PUIS J'AJOUTE ENSUITE DES DONNEES
  numbersList.add(73); // Operation d'ajout
  numbersList.add(64);
  numbersList.add(21);
  numbersList.add(12);

  numbersList[0] = 99; // changer la valeur a l'indice 0

  print(numbersList[0]);

  numbersList.remove(99); // operation de suppression
  numbersList.add(24); // Operation d'ajout
  numbersList.removeAt(3); // supprier le 3eme element du tableau
  numbersList.removeAt(1); // supprier le 1eme element du tableau
//	numbersList.clear();

  print("\n"); // permet d'aller a la ligne

  for (int element in numbersList) {
    print(element);
  }

  print("\n"); // permet d'aller a la ligne

  numbersList.forEach((element) => print(element)); // Using Lambda

  print("\n"); // permet d'aller a la ligne

  for (int i = 0; i < numbersList.length; i++) {
    print(numbersList[i]);
  }
}
