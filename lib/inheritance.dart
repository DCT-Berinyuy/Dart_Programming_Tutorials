// ###-------- Inheritance in Dart --------###

// Inheritance is a mechanism in which one class acquires the properties (methods and fields) of another class.
// The class that inherits the properties is called the subclass or child class.
// The class whose properties are inherited is called the superclass or parent class.
// We use the `extends` keyword to inherit a property.

// ### Types of Inheritance ###

// - Single Inheritance: A class can inherit from only one superclass.
//   Example: class MobilePhone extends Electronics

// - Hierarchical Inheritance: When one class is inherited by many subclasses.
//   Example: class MobilePhone extends Electronics, class Television extends Electronics

// - Multilevel Inheritance: When a class inherits from a class that itself inherits from another class.
//   Example: class SmartPhone extends MobilePhone, class MobilePhone extends Electronics

// This is the parent class.
class Electronics {
  double height = 30;
  double width = 15;
  double thickness = 5;

  void watch() {
    print("Electronics Item Is Being Watched");
  }

  void printHeight() {
    print("Height of Item = $height");
  }

  void printWidth() {
    print("Width of Item = $width");
  }

  void printThickness() {
    print("Thickness of Item = $thickness");
  }
}

// This is a child class that inherits from the Electronics class.
class MobilePhones extends Electronics {
  void playGames() {
    print("Play games on mobile phones");
  }

  void callContact() {
    print("Calling through mobile phone");
  }
}

// This is another child class that inherits from the Electronics class.
class Mrdct extends Electronics {
  void message() {
    print("This message is from Mr.DCT showing he has understood inheritance");
  }
}

void main() {
  // Creating an object of the MobilePhones class.
  MobilePhones mobilePhones = MobilePhones();
  mobilePhones.height = 70;
  mobilePhones.width = 40;
  mobilePhones.thickness = 10;
  mobilePhones.watch();
  mobilePhones.printHeight();
  mobilePhones.printWidth();
  mobilePhones.printThickness();
  mobilePhones.playGames();
  mobilePhones.callContact();

  print("\n");

  // Creating an object of the Mrdct class.
  Mrdct mrdct = new Mrdct();
  mrdct.height = 7;
  mrdct.printHeight();
  mrdct.message();
}