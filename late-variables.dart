// `late` tells Dart that a variable will be initialized later,
// but guarantees that it will be initialized before it's used.

late int age;
void init() {
  age = DateTime.now().year - 1990;
  print("Age: $age");
}

void main() {
  init();
}