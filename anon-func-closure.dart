// closure is a function that captures variables from its surrounding scope
// in simple terms, a closure is a function that "remembers" the environment in which it was created.
// closures are often used for creating functions with private state or for creating function factories.
// an analogy would be a backpack that carries some items (variables) along with it (the function).
// real world example of closure is a counter function that maintains its own state.

// this is an anonymous function (closure) assigned to a variable
final multiply = (int a, int b) => a * b;


Function counter() {
  int count = 0;
  return () => ++count;
}

void main() {
  print(multiply(3, 4)); // 12

  // like `move` in Rust, the closure captures the `count` variable
  final c = counter();
  print(c()); // 1
  print(c()); // 2
}

