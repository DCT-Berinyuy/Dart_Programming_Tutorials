// ###-------- Constructors --------###

// A constructor is a special method that is called when an object is created.
// It is used to initialize the object's properties.

class Mathematics {
  int n1 = 7;
  int n2 = 7;

  // This is a parameterized constructor.
  // It takes two integer parameters and initializes the n1 and n2 properties.
  // The `this` keyword is used to refer to the current instance of the class.
  Mathematics(int n1, int n2) {
    print("Object is created with parameterized constructor");
    this.n1 = n1;
    this.n2 = n2;
  }

  // This is a named constructor.
  // Named constructors are used to create multiple constructors for a class.
  Mathematics.NamedConstructor() {
    print("This is my named constructor");
  }

  int addition() {
    return this.n1 + this.n2;
  }

  int subtraction() {
    return n1 - n2; // `this` is optional here
  }

  int multiplition() {
    return this.n1 * this.n2;
  }

  double division() {
    return this.n1 / this.n2;
  }
}

void main() {
  // Creating an object using the named constructor.
  Mathematics mathematics = Mathematics.NamedConstructor();

  int addResult = mathematics.addition();
  int subResult = mathematics.subtraction();
  double divResult = mathematics.division();
  int multResult = mathematics.multiplition();

  print("Addition: \$addResult");
  print("Subtraction: \$subResult");
  print("Division: \$divResult");
  print("Multiplication: \$multResult");

  // Creating an object using the parameterized constructor.
  Mathematics mathematics2 = Mathematics(10, 5);
  print("\nAddition2: \${mathematics2.addition()}");
}