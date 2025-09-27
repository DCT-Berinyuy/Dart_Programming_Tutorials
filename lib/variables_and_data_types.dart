// ###------- Variables, List, Maps and DataTypes -------###

void main() {
  // In Dart, you can declare variables using var, or by specifying the type.
  // It is recommended to specify the type for better code readability and safety.

  // String: A sequence of characters.
  String name = "Mr.DCT";

  // bool: Represents boolean values, true or false.
  bool male = true;

  // int: Represents integer numbers.
  int age = 20;

  // List: An ordered collection of items. It can contain duplicates.
  List<String> fruits = ["mango", "apple"];

  // Map: A collection of key-value pairs. Keys are unique.
  Map<String, dynamic> myData = {
    "name": name,
    "age": age,
    "male": male,
    "fruits": fruits
  };

  // addAll(): Adds all items from another list to the end of this list.
  fruits.addAll(["banana", "guava"]);

  // sort(): Sorts the list in ascending order.
  fruits.sort();

  // print(): Prints the string representation of an object to the console.
  print("Fruits: \$fruits");
  print("My Data: \$myData");
}