// ###------- Final & Const -------###

void main() {
  // `final` and `const` are used to declare variables that cannot be reassigned.

  // `final` variables are initialized at runtime and can only be assigned a value once.
  // They can be declared inside a class.
  final String name = "Mr.DCT";
  print("Final name: \$name");

  // `const` variables are compile-time constants.
  // They must be initialized with a constant value and cannot be changed at runtime.
  // They cannot be declared inside a class unless they are also `static`.
  const double float = 7.2;
  print("Const float: \$float");

  // Accessing a `static final` variable from a class.
  print("Accessing static final from class: \${My.name}");
}

class My {
  // `static final` variables belong to the class itself, not to any instance of the class.
  static final name = "Mr.DCT";
}