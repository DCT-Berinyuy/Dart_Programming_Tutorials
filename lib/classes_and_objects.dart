// ###-------- Class and Objects --------###

// A class is a blueprint for creating objects.
// It defines a set of properties and methods that are common to all objects of that class.
// Using a static keyword, you can directly access a function from a class without an object.
// Classes permit you to reuse code.
// Packages are nothing but a collection of classes.
// An object is an instance of a class.

class Mathematics {
  // This is a method for addition.
  int addition(int n1, int n2) {
    return n1 + n2;
  }

  // This is a method for subtraction.
  int subtraction(int n1, int n2) {
    return n1 - n2;
  }

  // This is a method for multiplication.
  int multiplition(int n1, int n2) {
    return n1 * n2;
  }

  // This is a method for division.
  double division(int n1, int n2) {
    return n1 / n2;
  }
}

void main() {
  // Creating an object of the Mathematics class.
  Mathematics mathematics = new Mathematics();
  int n1 = 7;
  int n2 = 7;

  // Calling the methods of the Mathematics class using the object.
  int addResult = mathematics.addition(n1, n2);
  int subResult = mathematics.subtraction(n1, n2);
  double divResult = mathematics.division(n1, n2);
  int multResult = mathematics.multiplition(n1, n2);

  // Printing the results.
  print("Addition: \$addResult");
  print("Subtraction: \$subResult");
  print("Division: \$divResult");
  print("Multiplication: \$multResult");
}