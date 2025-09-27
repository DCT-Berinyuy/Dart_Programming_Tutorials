
// ###------- Variables, List, Maps and DataTypes -------###

void main() {
  String name = "Mr.DCT";
  bool male = true;
  int age = 20;
  List<String> fruits = ["mango", "apple"];
  Map<String, dynamic> myData = {
    "name": name,
    "age": age,
    "male": male,
    "fruits": fruits
  };
  fruits.addAll(["banana", "guava"]);
  fruits.sort();
  print("Fruits: \$fruits");
  print("My Data: \$myData");
}
