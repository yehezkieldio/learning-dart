
// Iterable is a collection that can be iterated over, like a list or a set.
// FUnctions that lazily produce a sequence of values are called generators.
// The sync* keyword is used to define a synchronous generator function.
Iterable<int> naturalsTo(int n) sync* {
  for (var i = 0; i <= n; i++) yield i;
}

// The async* keyword is used to define an asynchronous generator function.
// It returns a Stream, which is a sequence of asynchronous events.
// A Stream is similar to an Iterable, but it produces values asynchronously.
Stream<int> asynchronousNaturalsTo(int n) async* {
  for (var i = 0; i <= n; i++) {
    // Simulate some asynchronous work
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() {
  for (var n in naturalsTo(5)) {
    print(n); // 0 1 2 3 4 5
  }

  print("Progressively printing numbers:");
  asynchronousNaturalsTo(5).listen((n) => print(n)); // 0 1 2 3 4 5 (one per second)
}