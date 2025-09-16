// Extensions in Dart, lets you add new functionality to existing types.
// In TypeScript, this is similar to prototype extensions.
// In Rust, this is similar to trait implementations for existing types.

extension StringExtensions on String {
  bool get isValidEmail {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    return emailRegex.hasMatch(this);
  }

  String extractDomain() {
    final parts = this.split('@');
    if (parts.length != 2) return '';
    return parts[1];
  }

  String extractUsername() {
    final parts = this.split('@');
    if (parts.isEmpty) return '';
    return parts[0];
  }

  String get capitalize {
    if (this.isEmpty) return this;
    return this[0].toUpperCase() + this.substring(1);
  }

  String get uppercase {
    return this.toUpperCase();
  }
}

void main() {
  String email = "helloworld@gmail.com";

  print(email.isValidEmail);
  print(email.capitalize);
  print(email.uppercase);
  print(email.extractDomain());
  print(email.extractUsername());
}
