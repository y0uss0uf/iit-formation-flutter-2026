
// Objectif
// 1. Explorer l'heritage
// 2. Creation de la Class Animal 
// 3. Creation de la Class Dog 
// 3. Creation de la Class Cat
// Dog et Cat heriterons de la class Animal
// 

extension valueString on String? {
  String get value => this != null ? this! : '';
  int parseInt() =>value.isEmpty ? 0 : int.parse(value);
}

void main() {

	var dog = Dog();
	dog.race = "Labrador";
	dog.color = "Black";
	dog.aboie();
	dog.eat();

	var cat = Cat();
	cat.color = "White";
	cat.age = 6;
	cat.eat();
	cat.miole();

	var animal = Animal();
	animal.color = "brown";
	animal.eat();
}

// 2. Creation de la Class Animal 
class Animal {

	String? color;

	void eat() {
		print("Mange !");
	}
}

// 3. Creation de la Class Dog 
class Dog extends Animal {      // Dog est l'enfant de la class Animal, Animal est une super Class ou la class parent

	String? race;

	void aboie() {
		print("wouf !");
	}
}

// 3. Creation de la Class Cat 
class Cat extends Animal {      // Cat is Child class or sub class, Animal is super or parent class

	int? age;

	void miole() {
		print("Mion !");
	}
}
