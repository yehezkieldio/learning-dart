// Dart uses single-threaded event driven concurrency model, similar to JavaScript.
// In Rust we have async-std and tokio for async programming, in Dart async is built-in.
// Rust vs Dart async:
// 1. Both use async/await syntax.
// 2. Dart has a single-threaded event loop, while Rust can use multi-thread
// 3. Dart's Futures are similar to Rust's Futures, but Dart's are more integrated into the language.
// 4. Dart has built-in support for streams, while Rust uses external crates.
// 5. Error handling in Dart uses try/catch, while Rust uses Result and the ? operator.

// Key Primitives:
// Future<T> - represents a value that will be available at some point in the future.
// async/await - keywords to work with Futures in a more readable way.
// Stream<T> - represents a sequence of asynchronous events.

// Dart seperate event-queue and microtask-queue.

Future<void> someAsyncFunction() async {
  await Future.delayed(Duration(seconds: 1));
  print('Async operation complete');
}

// Microtasks - run before the next event loop iteration.
// Event queue - tasks that are scheduled to run in the next event loop iteration.
// In real world applications, you might use microtasks for small, quick operations that need to happen
// before the next event loop tick, while events are used for larger tasks like I/O operations.

void main() {
  print("Fetching...");
  someAsyncFunction();
  print("Done");

  Future.microtask(() => print("microtask"));
  Future(() => print("event"));
  print("sync");
}

// Dont block the UI thread, expensive computations should be done in isolates