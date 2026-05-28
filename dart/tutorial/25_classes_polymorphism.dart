
// Objectifs
// 1. LE POLYMORPHISM

void main() {

	var dog = Dog();
	dog.eat();

	print(dog.color);
}

class Animal {

	String color = "brown";

	void eat() {
		print("Animal is eating !");
	}
}

class Dog extends Animal {

	String? race;

	String color = "Black";     
    // Property Overriding
    // Surchage d'attribbut

	void bark() {
		print("Bark !");
	}

	// Method Overriding
	// Methode de Surchage
	void eat() {
		print("Dog is eating !");
		super.eat();
		print("More food to eat");
	}
}
