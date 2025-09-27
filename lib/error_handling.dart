
// ###___ Error Handling and Exceptions in Dart ___###

// Exceptions are a way of handling errors in your program.
// When an error occurs, an exception is thrown.
// You can use try-catch blocks to catch and handle exceptions.

void main() {
  // ###--- Try-Catch Block ---###
  try {
    // This code might throw an exception.
    int result = 10 ~/ 0;
    print("The result is $result");
  } catch (e) {
    // This block is executed if an exception is thrown.
    print("An error occurred: $e");
  }

  print("\n");

  // ###--- Throwing Exceptions ---###
  try {
    depositMoney(-100);
  } catch (e) {
    print(e);
  }

  print("\n");

  // ###--- Finally Block ---###
  try {
    int result = 10 ~/ 2;
    print("The result is $result");
  } catch (e) {
    print("An error occurred: $e");
  } finally {
    // The finally block is always executed, whether an exception is thrown or not.
    print("This is the finally block.");
  }
}

// You can throw your own exceptions using the throw keyword.
void depositMoney(int amount) {
  if (amount < 0) {
    throw new Exception("Amount cannot be negative");
  }
}

