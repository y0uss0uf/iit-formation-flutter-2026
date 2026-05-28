// Objectif creer une class avec
// 1. un Constructeur par defaut
// 2. un constructeur nommée

void main() {
  var student1 = Student(23, "Peter"); // Je creer une instance de mon object Student
  print("${student1.id} et ${student1.name}"); // j'affiche ses infos

  student1.study(); // Peter est entraint d'etudier
  student1.sleep(); // Peter dors

  var student2 =
      Student(45, "Sam"); // Je creer une instance de mon object Student du nom de Sam
  print("${student2.id} et ${student2.name}");

  student2.study();
  student2.sleep();

  var student3 = Student.myCustomConstructor(); /// Je creer une instance de mon object Student avec un 
  // constructeur nommee

  student3.id = 54; 
  student3.name = "Rahul";

  print("${student3.id} et ${student3.name}");

  var student4 = Student.myAnotherNamedConstructor(87, "Paul");
  print("${student4.id} et ${student4.name}");
}

// Creation de la classe Student
class Student {
  // attribut de la class
  int id = -1; // ajout de valeur par default a un attribut
  String? name;

  Student(this.id, this.name); // constructeur avec paramettre

  Student.myCustomConstructor() {
    // Constructeur nommee
    print("Ceci est un constructeur nommee");
  }

  Student.myAnotherNamedConstructor(
      this.id, this.name); // Constructeur nommee avec paremetre

  void study() {
    print("${this.name} etudie");
  }

  void sleep() {
    print("${this.name} dort");
  }
}
