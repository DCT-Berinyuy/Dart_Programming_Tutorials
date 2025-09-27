
// ###___ Callable Classes in Dart ___###

// A callable class is a class that can be called like a function.
// To create a callable class, you need to implement the `call` method.

void main() {
  // Creating an instance of the WannabeFunction class.
  var wf = new WannabeFunction();

  // Calling the instance of the class like a function.
  var out = wf("Hi", "there,", "gang");

  print(out);
}

class WannabeFunction {
  // This is the `call` method.
  // It can have any number of parameters and any return type.
  String call(String a, String b, String c) => '$a $b $c!';
}

