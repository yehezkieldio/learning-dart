// Lists are ordered collections of items.
void list() {
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  fruits.add('Grapes');
  print(fruits[1]); // Banana

  for (var fruit in fruits) {
    print(fruit);
  }
  print("");

  fruits.forEach(print);
  final upper = fruits.map((f) => f.toUpperCase());
  print(upper);

  List<String?> nullableList = ['Hello', null, 'World'];
  print(nullableList);
}

// Key-Value pairs collection.
void map() {
  Map<String, int> scores = {"Alice": 90, "Bob": 85};

  scores["Charlie"] = 88;
  print(scores["Alice"]); // 90
  scores.forEach((key, value) {
    print('$key: $value');
  });
}

// Unique unordered collection of items.
void set() {
  Set<int> numbers = {1, 2, 3}; // duplicates auto-removed
  numbers.add(4);
  print(numbers.contains(2)); // true
}

void main() {
  print("List");
  list();
  print("");
  print("Map");
  map();
  print("");
  print("Set");
}
