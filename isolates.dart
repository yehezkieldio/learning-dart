// In Dart, Isolates are a way to handle concurrency by running code in separate memory spaces.
// It runs on its own event loop and does not share memory with the main isolate.
// Communication only happens through message passing.

// In Rust, this model is closer to using threads with message passing (like channels) rather than shared memory concurrency.
// In Typescript, this is similar to Web Workers, which also run in separate threads and communicate via message passing.

import 'dart:isolate';

void backgroundTask(String message) {
  final result = message.toUpperCase();
  print('Background task result: $result');
}

void main() async {
  Isolate.spawn(backgroundTask, 'hello from main isolate');
  // Isolate.spawn launches a completely separate memory and execution context.
  print('Main isolate continues running...');

  Isolate.spawn(backgroundTask, 'another message');
}
