// typedef is used to create an alias for a function type.
// In Rust, this is similar to using `type` to define a function signature.
// In TypeScript, this is similar to using `type` or `interface` to define a function type.

typedef MathOperation = int Function(int, int);

int calculate(MathOperation op, int a, int b) => op(a, b);

void main() {
  print(calculate((x, y) => x + y, 2, 3)); // 5
}