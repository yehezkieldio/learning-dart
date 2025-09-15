// By default, variables cannot be null
// It must be explicitly declared as nullable using '?'

void main() {
  String nonNullable = 'Hello';
  String? nullable = null; // OK

  nullable = 'World'; // OK

  print(nonNullable);
  print(nullable);
}
