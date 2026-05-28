void main() {
  // Les chaine de caractère
  String s1 = 'un';
  String s2 = "deux";
  String s3 = 'c\'est facile';
  String s4 = "Oui c'est facile";

  String s5 = 'Nous allons ecrire une longue chaine de caractère. '
      'plutôt simple de faire une demo avec le langage de programmation Dart';

  // String Interpolation : utiliser ceci ["My name is $name"] ou ceci ["My name is " + name]
  String name = "Kevin";
  print(s5.length);

  // print("Mon nom est $name"); // Mon nom est kevin
  print("le nombre de caractère de la variable name est ${name.length}");

  int l = 20;
  int b = 10;

  print("La somme de  $l et $b est ${l + b}");
}
