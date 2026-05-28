// Paramètres facultatifs nommés + valeur par defaut
// Une fonction possede des para

void main() {
  trouveVolume(10); // lorsque je ne donne pas de valeur aux parametre optionnel 
  // il utilise celle qui ont ete donner par defaut
  print("++++++++++++++++++++++++++++++");

  trouveVolume(10, height: 20, largeur: 5);
}

int trouveVolume(int length, {int? largeur = 2, int? height = 5}) {
  print("La longeur est $length");
  print("La Largeur est $largeur");
  print("La hauteur est  is $height");

   if(largeur != null  && height != null){
      print("Le Volume est ${length * largeur * height}");
      return length * largeur * height;
  }
  return 0;
}
