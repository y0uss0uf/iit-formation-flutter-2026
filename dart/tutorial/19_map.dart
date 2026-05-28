// ObjectiF
// 1. Maps comment Manipuler les Map
// +++++++++    SYNTAXE
// {
//    	"key": valeur
//    	"key": valeur
// }
// --> KEY est unique
// --> VALEUR peut etre dupliquer

void main() {
// Method 1 : JE CREER UNE MAP ET J'AJOUTE DES DONNER LORS DE SA CREATION
  Map pays = {"USA": 1, "INDIA": 91, "PAKISTAN": 92};

  print(pays);

  Map<String, String> fruits =
      Map(); // Method 2: JE CREER UNE  MAP VIDE PUIS J'AJOUTE ENSUITE DES DONNEES
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"] = "green";

  print(fruits);

// LES ACTIONS QU'ON PEUT FAIT SUR UNE MAP

  fruits.containsKey("apple"); // retourne vrai si apple est une key de la map fruits
  fruits.update(
      "apple", (value) => "green"); // Permet la mise a jour de la nouvelle valeur 
  fruits.remove("apple"); // supprime la key et sa valeur
  fruits.isEmpty; // retourne vrai (true) si fruits est vide
  fruits.length; // retourne le nombre d'element dans fruits
//	fruits.clear();    // Supprime tout dans fruits

  print(fruits["apple"]);

  print("\n"); // permet d'aller a la ligne

  // Faire une boucle pour afficher les keys d'une Map

  for (String key in fruits.keys) {
    print(key);
  }

  print("\n"); // permet d'aller a la ligne

// Faire une boucle pour afficher les valeur d'une Map
  for (String value in fruits.values) {
    print(value);
  }

  print("\n"); // permet d'aller a la ligne



  // Faire une boucle pour afficher les keys et valeurs d'une Map
  fruits.forEach(
      (key, value) => print("key: $key et la valeur: $value"));

}
