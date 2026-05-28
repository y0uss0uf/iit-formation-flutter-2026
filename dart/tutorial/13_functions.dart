import 'dart:io';

// OBJECTIFS
// 1. Definit une fonction
// 2. Passer un parametre a la fonction
// 3. Returner la valeur de la fonction 

void main() {
  addition(12, 4);
  
}


void addition(int nb1, int nb2) {
  print("La somme de $nb1 + $nb2 = ${nb1 + nb2}");
}