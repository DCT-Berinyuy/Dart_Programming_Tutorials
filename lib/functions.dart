// ###-------- Functions --------###

void main() {
  // Functions are blocks of code that perform a specific task.
  // They can be called from other parts of the code.

  // Creating an instance of the Verla class to access its methods.
  Verla verla = new Verla();
  String name = "Mr.DCT";
  int n = 7;
  print("Function call: ${verla.myName(name, n)}");

  // Dart has many built-in functions. For example, toLowerCase() is a method of the String class.
  print("String to lower case: ${name.toLowerCase()}");

  // ###-------- Positional Parameters --------###
  // Positional parameters are passed to a function based on their position.
  Map myProfile = profile("Mr.DCT", 20, "M");
  print("\nPositional Parameters: $myProfile");

  // ###-------- Named Parameters --------###
  // Named parameters are passed to a function using their names.
  // They are enclosed in curly braces {}.
  // The `required` keyword indicates that a parameter must be provided.
  Map myProfile2 = profileNamed(name: "Mr.DCT", age: 20, gender: "M");
  print("\nNamed Parameters: $myProfile2");

  // ###-------- Default Parameters --------###
  // Default parameters provide a default value to a parameter if no value is passed.
  // Default parameters can only be used with named parameters.
  print("\nAreaOfRectangle with default values: ${areaOfRectangle()}");
  print("AreaOfCircle with default values: ${areaOfCircle()}");

  // ###-------- Short Hand Syntax --------###
  // The arrow syntax (=>) is a shorthand for functions that contain a single expression.
  double l = 7.3;
  double w = 4.2;
  String area = areaRectangleShort(l, w);
  print("\nShort hand syntax: $area");
}

// A class can contain functions (methods).
// To access a function from a class, you can use an object of the class or make the function static.
class Verla {
  String myName(String name, int n) {
    return (name + " " + "Hi");
  }
}

// A function with positional parameters.
Map<String, dynamic> profile(String name, int age, String gender) {
  return {"Name": name, "Age": age, "Gender": gender};
}

// A function with named parameters.
Map<String, dynamic> profileNamed(
    {required String name, required int age, required String gender}) {
  return {"Name": name, "Age": age, "Gender": gender};
}

// A function with default parameters.
double areaOfRectangle({double length = 2.0, double width = 2.0}) {
  return length * width;
}

// A function with default parameters.
double areaOfCircle({double radius = 1.0}) {
  return 3.14 * radius * radius;
}

// A function using the shorthand syntax.
String areaRectangleShort(double length, double width) =>
    "Area of rectangle is ${length * width}";