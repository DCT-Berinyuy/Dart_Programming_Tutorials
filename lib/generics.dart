
// ###___ Generics in Dart ___###

// Generics are a way to create reusable code that can work with different types.
// They allow you to define classes, methods, and functions that can work with any type.

void main() {
  // ###--- Using Generics with a Class ---
  // Creating a Box that can hold an integer.
  Box<int> intBox = Box(10);
  print("Integer box value: ${intBox.getValue()}");

  // Creating a Box that can hold a string.
  Box<String> stringBox = Box("Hello");
  print("String box value: ${stringBox.getValue()}");

  print("\n");

  // ###--- Using Generics with a Function ---
  int lastNumber = getLast([1, 2, 3, 4, 5]);
  print("Last number: $lastNumber");

  String lastFruit = getLast(["Apple", "Banana", "Orange"]);
  print("Last fruit: $lastFruit");
}

// This is a generic class.
// The `<T>` is a type parameter that can be any type.
class Box<T> {
  T _value;

  Box(this._value);

  T getValue() {
    return _value;
  }
}

// This is a generic function.
// It can take a list of any type and return the last element.
T getLast<T>(List<T> list) {
  return list.last;
}

