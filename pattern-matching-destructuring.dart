void main() {
  var list = [1, 2, 3];
  var (a, b) = ('Hello', 42);
  print('a: $a, b: $b');

  switch (list) {
    case [var first, var second, ...]:
      print('First: $first, Second: $second');
    case _:
      print('List is too short');
  }
}
