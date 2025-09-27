// ###___ Abstract Classes ___###

// Abstraction is the concept of hiding the implementation details and showing only the functionality to the user.
// An abstract class is a class that cannot be instantiated.
// It is used to define a common interface for a set of subclasses.
// Abstract classes are declared with the `abstract` keyword.

// This is an abstract class.
abstract class Family {
  // This is an abstract method. It has no implementation.
  void sex();
}

// This class extends the Family abstract class and provides an implementation for the sex method.
class Child extends Family {
  @override
  void sex() {
    print("Male");
  }
}

// This class also extends the Family abstract class and provides a different implementation for the sex method.
class Parent extends Family {
  @override
  void sex() {
    print("Female");
  }
}

void main() {
  // You cannot create an instance of an abstract class.
  // Family family = Family(); // This will cause an error.

  // You can create instances of the subclasses.
  Parent parent = Parent();
  Child child = Child();

  parent.sex();
  child.sex();
}