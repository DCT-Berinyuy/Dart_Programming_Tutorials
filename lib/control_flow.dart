// ###-------- Control Flow Statements --------###

void main() {
  // Control flow statements are used to control the order in which the program's code executes.

  // ###-------- If-else --------###
  // The if-else statement executes a block of code if a specified condition is true.
  // If the condition is false, another block of code can be executed.
  int age = 30;
  String vote = voteFunc(age);
  print("If-else result: $vote");

  // ###-------- Ternary Condtion --------###
  // The ternary operator is a shorthand for the if-else statement.
  age = 20;
  vote = voteFuncTernary(age);
  print("Ternary result: $vote");

  // ###-------- For Loop --------###
  // The for loop executes a block of code a specified number of times.
  print("\nFor Loop:");
  for (int count = 1; count <= 5; count++) {
    print("Hello world! $count");
  }

  // ###-------- While Loop --------###
  // The while loop executes a block of code as long as a specified condition is true.
  print("\nWhile Loop:");
  int n = 5;
  print("Factorial of $n is ${fact(n)}");

  // ###-------- Switch Statement --------###
  // The switch statement is used to perform different actions based on different conditions.
  print("\nSwitch Statement:");
  int day = 2;
  print("Day $day is ${printDay(day)}");

  // ###-------- Break and continue Statement --------###
  // The break statement is used to jump out of a loop.
  // The continue statement is used to skip the current iteration of a loop and continue with the next iteration.
  print("\nBreak and Continue:");
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue; // Skip iteration when i is 5
    }
    if (i % 2 != 0) {
      print(i * 2);
    }
  }
  print("Loop is Over");
}

// Function to check voting eligibility using if-else.
String voteFunc(int age) {
  if (age >= 18 && age <= 70) {
    return "You can vote";
  } else if (age > 70) {
    return "You are retired";
  } else if (age <= 0) {
    return "You are an imagination";
  } else {
    return "You can not vote";
  }
}

// Function to check voting eligibility using the ternary operator.
String voteFuncTernary(int age) {
  String result = age >= 18 && age <= 70
      ? "You can vote"
      : age > 70
          ? "You are retired"
          : age <= 0
              ? "You are an imagination"
              : "You can not vote";
  return result;
}

// Function to calculate the factorial of a number using a while loop.
int fact(int n) {
  int product = 1;
  while (n >= 1) {
    product = product * n;
    n--;
  }
  return product;
}

// Function to print the day of the week using a switch statement.
String printDay(int day) {
  String dayDefine = "";
  switch (day) {
    case 1:
      return "Monday";
    case (2):
      dayDefine = "Tuesday";
      break;
    case 3:
      return "Wednesday";
    default:
      return "Day not found";
  }
  return dayDefine;
}