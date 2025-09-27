
// ###___ Difference Between extends and implements keywords ___###

// extends don't override the method/function but implements do
// So implements is kind of similar to abstracting.

//Parent class
class Animal {
  void walking() {
    print("Walking");
  }

  void eating() {
    print("Eating");
  }
}

//Parent class
class Mammal {
  void reproduction() {}
}

//Child class
class Cow implements Animal, Mammal {
  void walking() {
    print("Walking cow");
  }

  void eating() {
    print("Eating cow");
  }

  void reproduction() {
    print("Cow is reproducing");
  }
}
// 1. You have to overrid the methods. No choice
// 2. If you have two parents for a child, then you use implements
// because you can't extends two parents in a child class
// 3. In conclution, you can have multiple parents in implements.

void main() {
  Cow cow = Cow();
  cow.eating();
  cow.walking();
  cow.reproduction();
}
