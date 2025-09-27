
// ###-------- Functions --------###

void main() {
  // Functions are code blocks that perform a particular task.
  Verla verla = new Verla(); // This is an object or instance
  String name = "Mr.DCT";
  int n = 7;
  print("Function call: ${verla.myName(name, n)}");
  print("String to lower case: ${name.toLowerCase()}"); // String is also a class with an in build in function

  // ###-------- Positional Parameters --------###
  Map myProfile = profile("Mr.DCT", 20, "M");
  print("\nPositional Parameters: $myProfile");

  // ###-------- Named Parameters --------###
  Map myProfile2 = profileNamed(name: "Mr.DCT", age: 20, gender: "M");
  print("\nNamed Parameters: $myProfile2");

  // ###-------- Default Parameters --------###
  // Default parameters only works on named parameters
  print("\nAreaOfRectangle with default values: ${areaOfRectangle()}");
  print("AreaOfCircle with default values: ${areaOfCircle()}");

  // ###-------- Short Hand Syntax --------###
  double l = 7.3;
  double w = 4.2;
  String area = areaRectangleShort(l, w);
  print("\nShort hand syntax: $area");
}

// To access a function from a class,
// Use either an Object or a Static.
class Verla {
  String myName(String name, int n) {
    //Or use static
    return (name + " " + "Hi");
  }
}

Map<String, dynamic> profile(String name, int age, String gender) {
  return {"Name": name, "Age": age, "Gender": gender};
}

Map<String, dynamic> profileNamed(
    {required String name, required int age, required String gender}) {
  return {"Name": name, "Age": age, "Gender": gender};
}

double areaOfRectangle({double length = 2.0, double width = 2.0}) {
  return length * width;
}

//Giving Default Values in Named Parameters
double areaOfCircle({double radius = 1.0}) {
  return 3.14 * radius * radius;
}

String areaRectangleShort(double length, double width) =>
    "Area of rectangle is ${length * width}";

