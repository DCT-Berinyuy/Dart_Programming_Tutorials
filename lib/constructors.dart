
// ###-------- Constructors --------###
//It is the first function that is run when your object is created.

class Mathematics {
  int n1 = 7;
  int n2 = 7;

// Constructor has same name as the Class
//Sudo: You can't have parameter and default constructor inside the same class.
  Mathematics(int n1, int n2) { // This is my parametarise constructor function
    print("Object is created");
    this.n1 = n1; // This accesses the current class I'm in
    this.n2 = n2;
  }

  Mathematics.NamedConstructor() {
    print("This is my named constructor");
  }

  int addition() {
    return this.n1 + this.n2;
  }

  int subtraction() {
    return n1 - n2; //Still works without specifying current class variables n1 and n2
  }

  int multiplition() {
    return this.n1 * this.n2;
  }

  double division() {
    return this.n1 / this.n2;
  }
}

void main() {
  Mathematics mathematics = Mathematics.NamedConstructor(); //Constructor Function

  int addResult = mathematics.addition();
  int subResult = mathematics.subtraction();
  double divResult = mathematics.division();
  int multResult = mathematics.multiplition();

  print("Addition: \$addResult");
  print("Subtraction: \$subResult");
  print("Division: \$divResult");
  print("Multiplication: \$multResult");

  Mathematics mathematics2 = Mathematics(10, 5);
  print("Addition2: \${mathematics2.addition()}");
}
