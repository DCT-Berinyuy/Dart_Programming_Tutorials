
// ###-------- If-else --------###

void main() {
  int age = 30;
  String vote = voteFunc(age);
  print("If-else result: $vote");

  // ###-------- Ternary Condtion --------###
  age = 20;
  vote = voteFuncTernary(age);
  print("Ternary result: $vote");

  // ###-------- For Loop --------###
  print("\nFor Loop:");
  for (int count = 1; count <= 5; count++) {
    print("Hello world! $count");
  }

  // ###-------- While Loop --------###
  print("\nWhile Loop:");
  int n = 5;
  print("Factorial of $n is ${fact(n)}");

  // ###-------- Switch Statement --------###
  print("\nSwitch Statement:");
  int day = 2;
  print("Day $day is ${printDay(day)}");

  // ###-------- Break and continue Statement --------###
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

int fact(int n) {
  int product = 1;
  while (n >= 1) {
    product = product * n;
    n--;
  }
  return product;
}

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
