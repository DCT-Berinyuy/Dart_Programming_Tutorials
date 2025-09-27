// ###___ Mixins in Dart Programming Language ___###

// Mixins are a way of reusing a class’s code in multiple class hierarchies.
// They are intended to provide a set of methods that can be used by other classes.
// Mixins are declared using the `mixin` keyword.

// This is a mixin that provides a `walk` method.
mixin Walk {
  void walk() {
    print("Walking");
  }
}

// This is a mixin that provides a `talk` method.
mixin Talk {
  void talk() {
    print("Talking");
  }
}

// This is a mixin that provides a `reproduce` method.
mixin Reproduce {
  void reproduce() {
    print("Reproducing");
  }
}

// This class uses the Walk, Talk, and Reproduce mixins.
// The `with` keyword is used to apply the mixins to the class.
class Animal with Walk, Talk, Reproduce {
  int legs = 4;
}

// This class also uses the Walk, Talk, and Reproduce mixins.
class Human with Walk, Talk, Reproduce {
  int legs = 2;
}

void main() {
  Animal animal = Animal();
  print("Animal:");
  animal.walk();
  animal.talk();
  animal.reproduce();

  print("\n");

  Human human = Human();
  print("Human:");
  human.walk();
  human.talk();
  human.reproduce();
}