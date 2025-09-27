// ###___ Super Keyword & Constructors in Inheritance ___###

// The `super` keyword is used to refer to the parent class.
// It can be used to call the parent class's constructor or methods.
// Parent class constructors are called first before the child class's constructor.

class Electronics1 {
  // Super Class
  Electronics1(String brand) {
    print("This is electronics Constructor - \$brand");
  }
  double height = 57;
  double width = 25;
  double thickness = 15;
}

class MobilePhones1 extends Electronics1 {
  // Sub class
  // The `super(brand)` calls the parent class's constructor.
  MobilePhones1(String model, String brand) : super(brand) {
    print("This is mobile phone constructor - \$model");
  }
}

// ###___ Method Overriding ___###

// Method overriding is a feature that allows a subclass to provide a specific implementation of a method that is already provided by its superclass.

class Electronics2 { // Parent Class
  double height = 57;
  double width = 25;
  double thickness = 5;

  void watch() {
    print("Electronics item is being watched.");
  }
}

class MobilePhones2 extends Electronics2 {
  // Child Class
  void playGames() {
    print("Playing games on mobile phones");
  }

  // This method overrides the `watch` method of the parent class.
  @override
  void watch() {
    print("MobilePhones item is being watched.");
    // The `super.watch()` calls the `watch` method of the parent class.
    super.watch();
  }
}

void main() {
  print("Super Keyword and Constructors in Inheritance:");
  MobilePhones1 mobilePhones1 = MobilePhones1("S27", "G-Pixel");
  mobilePhones1.height = 7;

  print("\nMethod Overriding:");
  MobilePhones2 mobilePhones2 = new MobilePhones2();
  mobilePhones2.watch();
}