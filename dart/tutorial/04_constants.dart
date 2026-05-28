void main() {
  //****
  // Une constante ne change par sa valeur au cour d'un programme
  // */

  // final
  final cityName = 'Mumbai';
  //cityName = 'Abidjan';     // si a un moment du programme je reassigne
  // la variable cityName par autre chose j'aurai une levé execption (error);

  final String countryName = 'India';

  // const
  const PI = 3.14;
  const double gravity = 9.8;
}

class Circle {
  final color = 'Red';
  // declaration de constante dans une classe
  static const PI = 3.14;
}
