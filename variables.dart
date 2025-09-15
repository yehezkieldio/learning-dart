void main() {
  // Explict type annotation
  int year = 2025;

  // Type inference
  var city = "Balikpapan"; // should be `String`

  // Immutable final variable (assigned once)
  final now = DateTime.now();

  // Compile-time constant
  // `const` are canonicalized values, that means it be reus
  const pi = 3.14;

  print("Year: $year, City: $city, Now: $now, Pi: $pi");
}

// keyword: var
// when to use: when the type is obvious, mutable state

// keyword: explict type annotation
// when to use: when you want clarity or static analysis

// keyword: final
// when to use: when the value is set once and but known at runtime

// keyword: const
// when to use: when the value is known at compile-time and never changes
