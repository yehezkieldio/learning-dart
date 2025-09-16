void main() {
  getCurrentYear();

  // Functions are first-class citizens in Dart
  // that means you can assign them to variables, pass them as arguments, and return them from other functions.
  void greet_user(String name) => print('Hello, $name!');
  final hello = greet_user;
  hello('Alice');

  String currentMonth = getCurrentMonth();
  print('Current month: $currentMonth');
}

void getCurrentYear() {
  var year = DateTime.now().year;
  print(year);
}

String getCurrentMonth() {
  var month = DateTime.now().month;
  return month.toString();
}

int add(int a, int b) {
  return a + b;
}

// Optional positional parameter with default value
void greetUser([String name = 'Guest']) {
  print('Hello, $name');
}

// named parameters with required and default values
void greet({required String name, int age = 18}) {
  print('$name is $age years old');
}

// nullable parameter
void greetNullable({String? name}) {
  print('Hello ${name ?? 'Guest'}');
}
