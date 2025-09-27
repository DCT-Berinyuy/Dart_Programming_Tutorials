
// ###-------- Non Customize Getter and Setter Functions --------###
//Setters are used to set customizable variables in a Class
//Getters are used to fetch the values
//An uderscore _ be4 a varible makes the variable private

class Mathematics1 {
  int numerator = 0;
  int denominator = 0;

  void printFraction() {
    print("\$numerator/\$denominator");
  }
}

// ###------------Customize Setter & Getter Functions--------------###

class Mathematics2 {
  int _num = 0; // Private variable
  int _den = 0; // Private variable

  //Setter Customizable Function
  void set setnumerator(int val) {
    _num = val * 7;
  }

  void set setdenomirator(int val) {
    _den = val * 3;
  }

  //Getter Customizable Function
  int get getnumerator => _num; //Method 1 Short
  int get getdenominator { //Method 2 Long
    return _den;
  }
}

void main() {
  print("Non-customized getters and setters:");
  Mathematics1 maths1 = new Mathematics1(); // Object Created
  maths1.numerator = 7; // Setter non customize
  maths1.denominator = 3; // Setter non customize

  print(maths1.numerator); // Getter non customize
  print(maths1.denominator); // Getter non customize
  maths1.printFraction();

  print("\nCustomized getters and setters:");
  Mathematics2 maths2 = new Mathematics2();
  maths2.setnumerator = 5;
  maths2.setdenomirator = 4;
  print(maths2.getnumerator);
  print(maths2.getdenominator);
}

