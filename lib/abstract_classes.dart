
// ###___ Abstraction ___###

// Abstraction is simply to hide the implemention details from the end user
// or programmer

// So basically, the abstract class have the blueprint of a function or property,
// and other classes are going to extend this class and have different implimentation
// inorder to use the them.
abstract class family {
  void sex();
}

class Child extends family {
  void sex() {
    print("Male");
  }
}

class Parent extends family {
  void sex() {
    print("Female");
  }
}

void main() {
  Parent parent = Parent();
  Child child = Child();
  parent.sex();
  child.sex();
}
