
// ###------- Final & Const -------###

void main() {
  // final - runtime, can reside inside a class
  final String name = "Mr.DCT";
  print("Final name: \$name");

  // const - compile time, can't reside inside a class
  const double float = 7.2;
  print("Const float: \$float");

  print("Accessing static final from class: \${My.name}");
}

class My {
  static final name = "Mr.DCT";
}
