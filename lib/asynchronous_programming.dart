
// ###___ Asynchronous Programming in Dart ___###

// Asynchronous programming allows you to perform long-running tasks without blocking the main thread of execution.
// This is important for keeping your application responsive.
// Dart uses Futures and the async/await keywords to handle asynchronous operations.

// A Future represents a value that will be available at some time in the future.
Future<String> fetchUserData() {
  // You can create a Future using the Future.delayed constructor.
  // This creates a Future that completes with a value after a specified delay.
  return Future.delayed(Duration(seconds: 2), () => "Mr.DCT");
}

// The async keyword is used to mark a function as asynchronous.
// An async function always returns a Future.
Future<void> main() async {
  print("Fetching user data...");

  // The await keyword is used to wait for a Future to complete.
  // It can only be used inside an async function.
  String userData = await fetchUserData();

  print("User data fetched: $userData");

  print("\n--- Another Example ---");
  print("Fetching numbers...");
  List<int> numbers = await fetchNumbers();
  print("Numbers fetched: $numbers");
}

Future<List<int>> fetchNumbers() async {
  // You can also use async and await to create your own asynchronous functions.
  await Future.delayed(Duration(seconds: 1));
  return [1, 2, 3, 4, 5];
}

