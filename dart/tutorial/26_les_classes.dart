import 'dart:io';
void main(List<String> args) {

  var blackBerry = Telephone('noir', 'blackBerry', 210000); // Creer une instance de l'object Telephone
  var samsungS5 = Telephone('gris', 'samsungS5', 70000);

  print("Vous avez combien sur vous pour pouvoir evaluer le type de telephone qu'on peut vous offrir");
  var price = (stdin.readLineSync()).parseDouble();

  if (price <= 70000) {
    print('vous pouvez acheter le telephone ${samsungS5.marque}');
  }else{
     print('vous n\'avez pas assez d\'argent pour acheter le  ${blackBerry.marque} qui coûte  ${blackBerry.prix} milles');
  }

}

extension valueString on String? {
  String get value => this != null ? this! : '';
  double parseDouble() =>value.isEmpty ? 0 : double.parse(value);
}





// Etape 1
// Telephone est un object => 

// Etape 2
// caracteristique ou attribut ou champs
// => couleur 
// => marque
// => prix

// Etape 2
// Constructeur

// Methodes ou Action 
// => appeler 
// => jouer de la musique

class Telephone {

  // attributs
  String couleur;
  String marque;
  double prix;

  // constructeur
  Telephone(this.couleur, this.marque, this.prix);

  // Methode ou  Action
  void appeler(){
    print('Je peux avec des unités');
  }
}