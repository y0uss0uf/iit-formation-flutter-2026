// OBJECTIF: Trouver l'Exception puis la Catcher (l'attraper)

void main() {
  print("CAS 1");
  // CASE 1: Lorsque vous connaissez l'exception
  try {
    // Try => j'essaie d'excecuter mes instruction a l'interieur de try
    // et lorsaque j'obtien une erreur (exception)
    // Catch => j'attrappe l'exception
    int result = 12 ~/ 0;
    print("Le resultat est $result");
  } on IntegerDivisionByZeroException {
    print("On ne divise pas un nombre par zero");
  }

  print("+++++++++++++++++++++++++++++++++++");
  print("CAS 2");
  // CASE 2: Lorsque vous ne connaissez pas l'exception
  try {
    int result = 12 ~/ 0;
    print("Le resultat est $result");
  } catch (e) {
    // le parametre e => recupere l'exception
    print("L' exception declencher est $e");
  }

  print("+++++++++++++++++++++++++++++++++++");
  print("CAS 3");
  // CASE 3: Utilisation de STACK TRACE pour connaître les événements survenus avant le lancement de l'exception
  try {
    int result = 12 ~/ 0;
    print("Le resultat est $result");
  } catch (e, s) {
    print("L' exception declencher est $e");
    print("STACK TRACE \n $s");
  }

  print("+++++++++++++++++++++++++++++++++++");
  print("CAS 4");
  // CASE 4: Qu'il y ait une exception ou non, la clause FINALE (FINALLY) est toujours exécutée
  try {
    int result = 12 ~/ 3;
    print("Le resultat est $result");
  } catch (e) {
    print("L'exception declencher est $e");
  } finally {
    print("C'est la clause FINALE et elle est toujours exécutée.");
  }

  print("+++++++++++++++++++++++++++++++++++");
  print("CAS 5");
  // CASE 5: PERSONNALISONS NOTRE EXCEPTION

  int montant = -30;
  try {
    if (montant < 0) {
      throw new DepotException();
    }
  } catch (e) {
    print(e.toString());
  } finally {
    // Code
  }
}

// JE Personnqlise Mon Exception
// 1 - Je creer la clase DepotException
// 2 - j'ajoute ceci a ma classe implements Exception => permet de transformer ma classe en une classe d'exception
// 3 - je creer une methode qui retourne un message d'erreur
// c'est tout

class DepotException implements Exception {
  String errorMessage() {
    return "Vous ne devez pas entrer une somme moin que 0";
  }
}
