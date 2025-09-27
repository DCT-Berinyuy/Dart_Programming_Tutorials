
/*__________START Dart Programming Tutorials_________

###------- Variables, List, Maps and DataTypes -------###

 String name = "Mr.DCT";
  bool male = true;
  int age = 20;
  List<String> fruits = ["mango", "apple"];
  Map<String, dynamic> myData = {
    "name" : name,
    "age" : age,
    "male" : male,
    "fruits" : fruits
  };
  fruits.addAll(["banana", "guava"]);
  fruits.sort();
  print(fruits);
  print(myData);

###------- Final & Const -------###

   // finaal - runtime, can reside inside a class
 final String name = "Mr.DCT";
 // const - compile time, can't reside inside a class
 const double float = 7.2;
 print(float);

 class My {
  static final name = "Mr.DCT";
}

###------- If-else -------###

    void main() {
  int age = 30;
  String vote = voteFunc(age);
  print(vote);

}

String voteFunc(int age) {
  if(age >= 18 && age <= 70) {
    return "You can vote";
  }
  else if(age > 70) {
    return "You are retired";
  }
  else if(age <= 0) {
    return "You are an imagination";
  }
  else {
    return "You can not vote";
  }
}

//###-------- Ternary Condtion --------###

  void main() {
 // if-else 
  int age = 20;
  String vote = voteFunc(age);
  print(vote);

}

String voteFunc(int age) {
    String result = age >= 18 && age <= 70? "You can vote"
    : age > 70? "You are retired"
      : age <= 0? "You are an imagination"
        : "You can not vote";
        return result;

###-------- For Loop --------###

void main() {
  for(int count = 1; count <= 50; count++) {
    print("Hello world!");
  }
}

}

//###-------- While Loop --------###

void main() {
 int n = 5;
 print(fact(n));
}
int fact(int n) {
  //int i = n;
  int product = 1;
  while(n >= 1) {
    product = product * n;
    n--;
  }
  return product;
}

###-------- Switch Statement --------###

void main() {
  int day = 2;
  print(printDay(day));
}

String printDay(int day) {
  String dayDefine = "";
  switch(day) {
    case 1:
    return "Monday";

    case(2):
    dayDefine = "Tuesday";
    break;

    case 3:
    return "Wednesday";

    default:
    return "Day not found";
    
  }
  return dayDefine;
}

###-------- Break and continue Statement --------###

void main() {
  for(int i = 1; i <= 10; i++) {
           if(i == 5)
         continue;
    if(i % 2 != 0){
    print(i * 2);
    }

  } 
    print("Loop is Over");
}

###-------- Functions --------###

void main() {
  //Funtios are code blocks that perform a particular task.
  Verla verla = new Verla(); // This is an object or instance
   String name = "Mr.DCT";
   int n = 7;
   print(verla.myName(name, n));
   print(name.toLowerCase());// String is also a class with an in build in function
}
// To access a function from a class,
// Use either an Object or a Static.


class Verla {
  String myName(String name, int n) { //Or use static
  return (name + " " + "Hi");
  
}
}

/*###-------- Positional Parameters --------###*/

void main() {
  Map myProfile = profile("Mr.DCT", 20, "M");
  print(myProfile);
}

Map<String, dynamic> profile(String name, int age, String gender) {
  return {
    "Name" : name,
    "Age" : age,
    "Gender" : gender
  };
}

/*###-------- Named Parameters --------###*/

void main() {
  Map myProfile = profile(name: "Mr.DCT", age: 20, gender: "M");
  print(myProfile);
}

Map<String, dynamic> profile({required String name, required int age, required String gender}) {
  return {
    "Name" : name,
    "Age" : age,
    "Gender" : gender
  };
}

/*###-------- Default Parameters --------###*/

void main() {
  //Default parameters only works on named parameters
  double length = 3.5;
  double width = 2.1;
  double radius = 2.5;
  print("AreaOfRectangle:");
  print(areaOfRectangle());
  print("AreaOfCircle:");
  print(areaOfCircle());

}

double areaOfRectangle({double length = 2.0, double width = 2.0}) {
  return length * width;
}
//Giving Default Values in Named Parameters
double areaOfCircle({double radius = 1.0}) {
  return 3.14 * radius * radius;
}

/*###-------- Class and Objects --------###*/
//Sudo Course
//A *class* is a blueprint or plant of how your data and functions are stored and called.
//Using a static keyword, you can directly access a function from a class without an object
//Class permits you to reuse code
//Packages are nothing but classes
//An *Object* is and instance or snapshort,Image of class.

class Mathematics {
  int addition(int n1, int n2) {
    return n1 + n2;
  }
  int subtraction(int n1, int n2) {
    return n1 - n2;
  }
  int multiplition(int n1, int n2) {
    return n1 * n2;
  }
  double division(int n1, int n2) {
    return n1 / n2;
  }
}
void main() {
  Mathematics mathematics = new Mathematics();//Creating an object
  int n1 = 7;
  int n2 = 7;
  int addResult = mathematics.addition(n1, n2);
  int subResult = mathematics.subtraction(n1, n2);
  double divResult = mathematics.division(n1, n2);
  int multResult = mathematics.multiplition(n1, n2);

  print(addResult);
  print(subResult);
  print(divResult);
  print(multResult);
}

/*###-------- Constructors --------###*/
//It is the first function that is run when your object is created.

class Mathematics {
  int n1 = 7;
  int n2 = 7;
// Constructor has same name as the Class
//Sudo: You can't have parameter and default constructor inside the same class.
  Mathematics(int n1, int n2) { // This is my parametarise constructor function
  print("Object is created");
    this.n1 = n1; // This accesses the current class I'm in
    this.n2 = n2;
  }
  Mathematics.NamedConstructor() {
    print("This is my named constructor");
  }

  int addition() {
    return this.n1 + this.n2;
  }
  int subtraction() {
    return n1 - n2;//Still works without specifying current class variables n1 and n2
  }
  int multiplition() {
    return this.n1 * this.n2;
  }
  double division() {
    return this.n1 / this.n2;
  }
}
void main() {
  Mathematics mathematics = new Mathematics.NamedConstructor();//Constructor Function
 
  int addResult = mathematics.addition();
  int subResult = mathematics.subtraction();
  double divResult = mathematics.division();
  int multResult = mathematics.multiplition();

  print(addResult);
  print(subResult);
  print(divResult);
  print(multResult);
}



/*###-------- Non Customize Getter and Setter Functions --------###*/
//Setters are used to set customizable variables in a Class
//Getters are used to fetch the values
//An uderscore _ be4 a varible makes the variable private


class Mathematics {
  int numerator = 0;
  int denominator = 0;

  void printFraction() {
    print("$numerator/$denominator");
  }
}
void main() {
  Mathematics maths = new Mathematics();// Object Created
  maths.numerator = 7;// Setter non customize
  maths.denominator = 3;// Setter non customize

  print(maths.numerator);// Getter non customize
  print(maths.denominator);// Getter non customize
  maths.printFraction();
}

###------------Customize Setter & Getter Functions--------------###

class Mathematics {
  int _num = 0;// Private variable
  int _den = 0;// Private variable

  //Setter Customizable Function
  void set setnumerator(int val) {
    _num = val * 7;
  }
  void set setdenomirator(int val) {
    _den = val * 3;
  }

  //Getter Customizable Function
  int get getnumerator => _num;//Method 1 Short
  int get getdenominator {//Method 2 Long
    return _den;
  }
}

void main() {
  Mathematics maths = new Mathematics();
  maths.setnumerator = 5;
  maths.setdenomirator = 4;
  print(maths.getnumerator);
  print(maths.getdenominator);
}

/*###-------- Short Hand Syntax --------###*/
void main() {
  double l = 7.3;
  double w = 4.2;
  String area = areaRectangle(l, w);
  print(area);
}

String areaRectangle(double length, double width) => "Area of rectangle is ${length * width}";



###-------- Inheritance in Dart --------###
// Inheritance is the act of a subclass/child having same properties as that of the base/parent class.
//We use the extends keyword to inherit a property.
//When one parent has two or more children, hierarchial inheritance is created.

- Hierarchial Inheritance 
Mobile Phone extends Electronics - calls(), games()
Television extends Electronics -
Electronics - height, width, thickness, aspectRatio, watch()

// While a Single inheritance is a parent with only one child.

- Single Inheritance 
Mobile Phone extends Electronics - calls(), games()
Electronics - height, width, thickness, aspectRatio, watch()

//While a Multilevel Inheritance is a parent with a child who is also a parent of another child.

- Multilevel Inheritance 
Mobile Phone extends Electronics - calls(), games()
Television extends Electronics -
Electronics - height, width, thickness, aspectRatio, watch()

void main() {
  MobilePhones mobilePhones = MobilePhones();//Object created
  mobilePhones.height = 70;
  mobilePhones.width = 40;
  mobilePhones.thickness = 10;
  mobilePhones.watch();
  mobilePhones.printHeight();
  mobilePhones.printWidth();
  mobilePhones.printThickness();
  mobilePhones.playGames();
  mobilePhones.callContact();

  Mrdct mrdct = new Mrdct();//Oject created
  mrdct.height = 7;
  mrdct.printHeight();
  mrdct.message();
}

class Electronics {
  double height = 30;
  double width = 15;
  double thickness = 5;

  void watch() {
    print("Electronics Item Is Being Watched");
  }

  void printHeight() {
    print("Height of Item = $height");
  }

  void printWidth() {
    print("Width of Item = $width");
  }
  
  void printThickness() {
    print("Thickness of Item = $thickness");
  }
}

class MobilePhones extends Electronics {// This is a single hierarchirial interitance
  void playGames() {
    print("Play games on mobile phones");
  }

  void callContact() {
    print("Calling through mobile phone");
  }
}

class Mrdct extends Electronics {
  void message() {
    print("This message is from Mr.DCT showing he has understood inheritance");
  }
}


// ###___ Super Keyword & Constructors in Inheritance ___###
//We use the super keyword in constructors with parameters
//Parent class constructors are called first before the child

void main() {
  MobilePhones mobilePhones = MobilePhones("S27", "G-Pixel");
  mobilePhones.height = 7;                    
}

class Electronics {// Super Class
  Electronics(String brand) {
    print("This is electronics Constructor - $brand");
  }
  double height = 57;
  double width = 25;
  double thickness = 15;
}

class MobilePhones extends Electronics {// Sub class
  MobilePhones (String model, String brand) : super(brand) {
    print("This is mobile phone constructor - $model");
  }
}

// ###___ Method Overriding ___###
void main() {
  MobilePhones mobilePhones = new MobilePhones();
  mobilePhones.watch();
//The object mobilePhones gives preference or priority to its class than the parent class
// If the child and parent class have the same property or function. 
}

class Electronics { // Parent Class
  double height = 57;
  double width = 25;
  double thickness = 5;

  void watch() {// Sub Class
    print("Electronics item is being watched.");
  }
}

class MobilePhones extends Electronics { 
  // Child Class
  void playGames() {
    print("Playing games on mobile phones");
  }
  void watch() {// Sub Class
    print("MobilePhones item is being watched.");
    super.watch();//Permits me to print both the parent & child watch function
    //So this override my parent class function
//Imagin it this way, Your parents are right handed but you prefer writing with your
//left hand. That means you have overwriten your parents property
  }
}


// ###___ Method Overriding ___###

// Abstraction is simply to hide the implemention details from the end user
// or programmer

void main() {
  Parent parent = Parent();
  Child child = Child();
  parent.sex();
  child.sex();
}
// So basically, the abstract class have the blueprint of a function or property,
// and other classes are going to extend this class and have different implimentation
// inorder to use the them.
abstract class family {
  void sex();
}

class Child extends family {
  void sex() {
    print("Male");
  }
}

  class Parent extends family {
  void sex() {
    print("Female");
    }
  }


// ###___ Difference Between extends and implements keywords ___###

// extends don't override the method/function but implements do
// So implements is kind of similar to abstracting.

void main() {
  Cow cow = Cow();
  cow.eating();
}

//Parent class
class Animal {
  void walking() {
    print("Walking");
  }

  void eating() {
    print("Eating");
  }
}

//Parent class
class Mammal {
  void reproduction() {}
}

//Child class
class Cow implements Animal, Mammal {
  void walking() {
    print("Walking cow");
  }

    void eating() {
    print("Eating cow");
  }

  void reproduction() {
    print("");
  }
}
// 1. You have to overrid the methods. No choice
// 2. If you have two parents for a child, then you use implements
// because you can't extends two parents in a child class
// 3. In conclution, you can have multiple parents in implements.


// ###___ Mixins in Dart Programming Language ___###

// Mixins is basically a class for code userbility and be used multiple times.

class Animal with Walk, Talk, Reproduce {
  int legs = 4;
}

class Human with Walk, Talk, Reproduce {
  int legs = 2;
}

mixin Walk {
  void walk() {}
}

mixin Talk {
  void walk() {}
}

mixin Reproduce {
  void walk() {}
}


___________END Dart Programming Tutorials__________*/



