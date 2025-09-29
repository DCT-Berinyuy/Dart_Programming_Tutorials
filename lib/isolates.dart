
// ###___ Isolates in Dart ___###

// Isolates are independent workers that run in parallel with the main program.
// They have their own memory heap and do not share any mutable state with other isolates.
// This makes them ideal for performing CPU-intensive tasks without blocking the UI.

import 'dart:isolate';

// This is the entry point for the new isolate.
void heavyComputation(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

Future<void> main() async {
  print("Main isolate: Starting heavy computation...");

  // Create a ReceivePort to receive messages from the new isolate.
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate and pass it the SendPort of the ReceivePort.
  await Isolate.spawn(heavyComputation, receivePort.sendPort);

  // Wait for the new isolate to send a message.
  receivePort.listen((message) {
    print("Main isolate: Received result from isolate: $message");
    receivePort.close(); // Close the receive port after receiving the message.
  });

  print("Main isolate: Continuing with other tasks...");
  // Simulate other tasks in the main isolate.
  await Future.delayed(Duration(seconds: 1));
  print("Main isolate: Other tasks completed.");
}
