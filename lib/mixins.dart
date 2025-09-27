
// ###___ Mixins in Dart Programming Language ___###

// Mixins is basically a class for code userbility and be used multiple times.

mixin Walk {
  void walk() {
    print("Walking");
  }
}

mixin Talk {
  void talk() {
    print("Talking");
  }
}

mixin Reproduce {
  void reproduce() {
    print("Reproducing");
  }
}

class Animal with Walk, Talk, Reproduce {
  int legs = 4;
}

class Human with Walk, Talk, Reproduce {
  int legs = 2;
}

void main() {
  Animal animal = Animal();
  print("Animal:");
  animal.walk();
  animal.talk();
  animal.reproduce();

  Human human = Human();
  print("\nHuman:");
  human.walk();
  human.talk();
  human.reproduce();
}

