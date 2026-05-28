import 'dart:io';

void main() {
  //****
  // COMMENT UTILISER LES SWITCH CASE
  // il peuvent s'utilser avec : les String - int - enum
  // */

// EXEMPLE 1

// print('//////////////////////////////');
// print('Entrer Votre Grade (A, B, C ou F) SVP!'); // Ecrire 
// String grade = stdin.readLineSync();
// if (!grade.isEmpty) {
//   print('tout va bien');
  
//   switch (grade) {
//     case 'A': // if (A == A)
//       print("Excellent grade");
//       break;
//     case 'B': // if (A == B)
//       print("Super !");
//       break;
//     case 'C': // if (A == C)
//       print("Mauvais travail");
//       break;
//     case 'F':
//       print("Vous avez echouer");
//       break;
//     default:
//       print("Invalide Grade");
//   }
// }else{
//   print('Vous devez entrer quelque chose');
// }

// EXEMPLE 2 // Demander 2 nombre a l'utilisateur puis faire l'addition de ce nombre


print('//////////////////////////////');

var resultat = 0;
int resultNombre2 = 0;

print('Entrer nombre 1'); // Ecrire 
var resultNombre1 = int.parse(stdin.readLineSync()!);
print(resultNombre1.runtimeType);

print('Entrer nombre 2'); // Ecrire 
String? saisir = stdin.readLineSync();
var result = saisir.parseInt();

print('//////////////////////////////');
print(result);


if(saisir != null){
   resultNombre2 = int.parse(saisir);
   resultat = resultNombre1 + resultNombre2;
}

print(" La somme de $resultNombre1 + $resultNombre2 = $resultat ");

}

extension valueString on String? {
  String get value => this != null ? this! : '';
  int parseInt() =>value.isEmpty ? 0 : int.parse(value);
}