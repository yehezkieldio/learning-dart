import 'dart:convert';

extension StringExtensions on String {
  String isJsonObject() {
    try {
      final decoded = jsonDecode(this);
      if (decoded is Map<String, dynamic>) {
        return 'Valid JSON object';
      } else {
        return 'Not a JSON object';
      }
    } catch (e) {
      return 'Invalid JSON string';
    }
  }
}

void main() {
  // Serialize a Dart object to JSON
  Map<String, dynamic> userOne = {'name': 'Alice', 'age': 30};
  String jsonStr = jsonEncode(userOne);
  print(jsonStr);

  // Deserialize JSON string to Dart object
  String jsonString = '{"name": "Bob", "age": 25}';
  Map<String, dynamic> userTwo = jsonDecode(jsonString);
  print(userTwo);

  // Using the String extension to check if a string is a JSON object
  String testString1 = '{"key": "value"}';
  String testString2 = 'Just a regular string';
  print(testString1.isJsonObject());
  print(testString2.isJsonObject());
}

// Avoid map soup for complex objects, by using explict model classes
class User {
  final String name;
  final int age;

  User({required this.name, required this.age});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(name: json['name'], age: json['age']);
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age};
  }
}

// Example usage of the User class
void exampleUsage() {
  User user = User(name: 'Charlie', age: 28);
  String userJson = jsonEncode(user.toJson());
  print(userJson);
  User newUser = User.fromJson(jsonDecode(userJson));
  print('Name: ${newUser.name}, Age: ${newUser.age}');
}
