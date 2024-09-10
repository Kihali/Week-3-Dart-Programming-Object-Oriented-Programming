// Abstract class demonstrating Abstraction
abstract class Animal {
  // Abstract method
  void makeSound();
}

// Subclass implementing the abstract method
class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof');
  }
}

// Another subclass implementing the abstract method
class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow');
  }
}

// Class demonstrating Encapsulation
class Person {
  // Private variables
  String _name;
  int _age;

  // Constructor
  Person(this._name, this._age);

  // Public getter for name
  String get name => _name;

  // Public setter for name
  set name(String name) {
    _name = name;
  }

  // Public getter for age
  int get age => _age;

  // Public setter for age
  set age(int age) {
    if (age > 0) {
      _age = age;
    } else {
      print("Age must be positive.");
    }
  }

  // Method to display information
  void displayInfo() {
    print('Name: $_name, Age: $_age');
  }
}

void main() {
  // Demonstrating Encapsulation
  Person person = Person('Alice', 30);
  person.displayInfo(); // Output: Name: Alice, Age: 30
  person.age = -5; // Output: Age must be positive.
  person.age = 25;
  person.displayInfo(); // Output: Name: Alice, Age: 25

  // Demonstrating Inheritance and Polymorphism
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.makeSound(); // Output: Woof
  myCat.makeSound(); // Output: Meow
}
