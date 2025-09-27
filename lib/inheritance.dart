
// ###-------- Inheritance in Dart --------###
// Inheritance is the act of a subclass/child having same properties as that of the base/parent class.
//We use the extends keyword to inherit a property.
//When one parent has two or more children, hierarchial inheritance is created.

/*
- Hierarchial Inheritance
Mobile Phone extends Electronics - calls(), games()
Television extends Electronics -
Electronics - height, width, thickness, aspectRatio, watch()

- Single Inheritance
Mobile Phone extends Electronics - calls(), games()
Electronics - height, width, thickness, aspectRatio, watch()

- Multilevel Inheritance
Mobile Phone extends Electronics - calls(), games()
Television extends Electronics -
Electronics - height, width, thickness, aspectRatio, watch()
*/

void main() {
  MobilePhones mobilePhones = MobilePhones(); //Object created
  mobilePhones.height = 70;
  mobilePhones.width = 40;
  mobilePhones.thickness = 10;
  mobilePhones.watch();
  mobilePhones.printHeight();
  mobilePhones.printWidth();
  mobilePhones.printThickness();
  mobilePhones.playGames();
  mobilePhones.callContact();

  Mrdct mrdct = new Mrdct(); //Oject created
  mrdct.height = 7;
  mrdct.printHeight();
  mrdct.message();
}

class Electronics {
  double height = 30;
  double width = 15;
  double thickness = 5;

  void watch() {
    print("Electronics Item Is Being Watched");
  }

  void printHeight() {
    print("Height of Item = \$height");
  }

  void printWidth() {
    print("Width of Item = \$width");
  }

  void printThickness() {
    print("Thickness of Item = \$thickness");
  }
}

class MobilePhones extends Electronics {
  // This is a single hierarchirial interitance
  void playGames() {
    print("Play games on mobile phones");
  }

  void callContact() {
    print("Calling through mobile phone");
  }
}

class Mrdct extends Electronics {
  void message() {
    print("This message is from Mr.DCT showing he has understood inheritance");
  }
}
