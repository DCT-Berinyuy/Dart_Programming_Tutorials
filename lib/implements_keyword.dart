// ###___ The `implements` Keyword ___###

// The `implements` keyword is used to implement an interface.
// An interface is a contract that defines a set of methods that a class must implement.
// A class can implement multiple interfaces.
// When a class implements an interface, it must provide an implementation for all the methods of that interface.

// This is a class that will be used as an interface.
class Animal {
  void walking() {
    print("Walking");
  }

  void eating() {
    print("Eating");
  }
}

// This is another class that will be used as an interface.
class Mammal {
  void reproduction() {}
}

// This class implements the Animal and Mammal interfaces.
// It must provide an implementation for all the methods of both interfaces.
class Cow implements Animal, Mammal {
  @override
  void walking() {
    print("Walking cow");
  }

  @override
  void eating() {
    print("Eating cow");
  }

  @override
  void reproduction() {
    print("Cow is reproducing");
  }
}

void main() {
  Cow cow = Cow();
  cow.eating();
  cow.walking();
  cow.reproduction();
}

// ###___ Key Differences Between `extends` and `implements` ___###

// 1. A class can extend only one class, but it can implement multiple interfaces.
// 2. When a class extends another class, it inherits the implementation of the superclass's methods.
//    When a class implements an interface, it must provide its own implementation for all the methods of the interface.