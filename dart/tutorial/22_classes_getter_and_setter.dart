// Objectifs creer des
// 1. Getter et Setter par default
// 2. Personnaliser ses Getter et Setter
// 3. rendre mes variable prives

// Getter => Permet d'acceder au donner d'un attribut
// Setter => Permet de modiffier les donnee d'un attribut
void main() {
  var student = Student(); // je creer un  object vide
  student.name = "Peter"; // J'ajoute le nom
  print(student
      .name); // du faits que c'est un getter par defaut j'expose l'atrribut pour l'afficher

  student.setPercentage =
      438.0; // J'ajoute dans le meme object son pourcentage grace au setter
  print(student
      .getPercentage); // J'affiche le pourcentage contenue dans l'objet student
}

class Student {
  String? name; // Une Variable de Class est par defaut un Getter et Setter
  double?
      _percent; // _percent est un attribut privee uniquement disponible dans ce fichier

  // Creation d'un setter personnaliser
  void set setPercentage(double value) =>
      _percent = (value / 500) * 100;
  // Je creer mon getter pour donner acces a mon attribut priver
  double get getPercentage => _percent.value;
}


extension _ on double? {
  double get value => this != null ? this ! : 0.0;
}