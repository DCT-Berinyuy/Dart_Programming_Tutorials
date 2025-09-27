
// ###___ Super Keyword & Constructors in Inheritance ___###
//We use the super keyword in constructors with parameters
//Parent class constructors are called first before the child

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
  MobilePhones1(String model, String brand) : super(brand) {
    print("This is mobile phone constructor - \$model");
  }
}

// ###___ Method Overriding ___###
class Electronics2 { // Parent Class
  double height = 57;
  double width = 25;
  double thickness = 5;

  void watch() {
    // Sub Class
    print("Electronics item is being watched.");
  }
}

class MobilePhones2 extends Electronics2 {
  // Child Class
  void playGames() {
    print("Playing games on mobile phones");
  }

  void watch() {
    // Sub Class
    print("MobilePhones item is being watched.");
    super.watch(); //Permits me to print both the parent & child watch function
    //So this override my parent class function
    //Imagin it this way, Your parents are right handed but you prefer writing with your
    //left hand. That means you have overwriten your parents property
  }
}

void main() {
  print("Super Keyword and Constructors in Inheritance:");
  MobilePhones1 mobilePhones1 = MobilePhones1("S27", "G-Pixel");
  mobilePhones1.height = 7;

  print("\nMethod Overriding:");
  MobilePhones2 mobilePhones2 = new MobilePhones2();
  mobilePhones2.watch();
  //The object mobilePhones gives preference or priority to its class than the parent class
  // If the child and parent class have the same property or function.
}
