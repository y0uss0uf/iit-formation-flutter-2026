void main(List<String> arguments) {
  //****
  // Les types de données en dart sont diverse il y a :
  // String , int , double, boolean, Map, List, etc ..
  // */

  // les entiers: int
  int score = 12;
  var count =
      true; // c'est un typage static à la compilation il saura le type de counter
  int hexValue = 0xEADEBAEE;

  // Numbers: double
  double percentage = 93;
  var percent = 82.533;
  double exponents = 1.42e5;

  // Strings
  String name = "Henry";
  var company = "Google";

  // Boolean
  bool isValid = true;
  var isAlive = false;

  // les Listes: List

  List<double> notesKoffiMath = [5.5, 17, 11.75, 16, 19];
  // indice => 0 , 1, 2, 3
  print('////////////////');
  print(notesKoffiMath[3]);

  // Les Maps {}
  Map<String, dynamic> person = {
    'name': "James",
    'age': 77,
    'notes': [12, 16, 18],
    'issession': true
  };

  print(person['age']);

  print(score);
  print(exponents);
  // NOTE: Tout les type de donnée en dart sont des Object.
}
