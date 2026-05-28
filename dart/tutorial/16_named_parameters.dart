// Paramètres facultatifs nommés
// Une fonction possede des parametre nommés lorsqu'on utilise ceci {} dans une fonction

// exemple syntaxe

fonction({int? param1, String? params2}) {}

// lorsque j'execute la fonction
// je fais ceci

// fonction(param1: 33, param2: 'hello world');

void main() {
  trouveVolume(10, largeur: 5, height: 20);
  print("");

  trouveVolume(10, height: 20, largeur: 5);
}

int? trouveVolume(int length, {int? largeur, int? height}) {
  print("La longeur est $length");
  print("La Largeur est $largeur");
  print("La hauteur est  is $height");

  if(largeur != null  && height != null){
      print("Le Volume est ${length * largeur * height}");
  }

}
