// ###-------- Getters and Setters --------###

// Getters and setters are special methods that provide read and write access to an object’s properties.
// An underscore (_) before a variable name makes it private to the library.

// ###-------- Non-customized Getter and Setter Functions --------###

class Mathematics1 {
  // Public properties with default getters and setters.
  int numerator = 0;
  int denominator = 0;

  void printFraction() {
    print("\$numerator/\$denominator");
  }
}

// ###------------Customized Setter & Getter Functions--------------###

class Mathematics2 {
  // Private properties.
  int _num = 0;
  int _den = 0;

  // Custom setter for the numerator property.
  void set setnumerator(int val) {
    // You can add custom logic here.
    _num = val * 7;
  }

  // Custom setter for the denominator property.
  void set setdenomirator(int val) {
    // You can add custom logic here.
    _den = val * 3;
  }

  // Custom getter for the numerator property using shorthand syntax.
  int get getnumerator => _num;

  // Custom getter for the denominator property using the long-form.
  int get getdenominator {
    return _den;
  }
}

void main() {
  print("Non-customized getters and setters:");
  Mathematics1 maths1 = new Mathematics1();
  // Using the default setter.
  maths1.numerator = 7;
  maths1.denominator = 3;

  // Using the default getter.
  print(maths1.numerator);
  print(maths1.denominator);
  maths1.printFraction();

  print("\nCustomized getters and setters:");
  Mathematics2 maths2 = new Mathematics2();
  // Using the custom setter.
  maths2.setnumerator = 5;
  maths2.setdenomirator = 4;

  // Using the custom getter.
  print(maths2.getnumerator);
  print(maths2.getdenominator);
}