
// ###-------- Class and Objects --------###
//Sudo Course
//A *class* is a blueprint or plan of how your data and functions are stored and called.
//Using a static keyword, you can directly access a function from a class without an object
//Class permits you to reuse code
//Packages are nothing but classes
//An *Object* is and instance or snapshort,Image of class.

class Mathematics {
  int addition(int n1, int n2) {
    return n1 + n2;
  }

  int subtraction(int n1, int n2) {
    return n1 - n2;
  }

  int multiplition(int n1, int n2) {
    return n1 * n2;
  }

  double division(int n1, int n2) {
    return n1 / n2;
  }
}

void main() {
  Mathematics mathematics = new Mathematics(); //Creating an object
  int n1 = 7;
  int n2 = 7;
  int addResult = mathematics.addition(n1, n2);
  int subResult = mathematics.subtraction(n1, n2);
  double divResult = mathematics.division(n1, n2);
  int multResult = mathematics.multiplition(n1, n2);

  print("Addition: \$addResult");
  print("Subtraction: \$subResult");
  print("Division: \$divResult");
  print("Multiplication: \$multResult");
}
