import 'package:json_serializable_test/lib_json_serializable_test.dart'
    as json_serializable;
import 'package:json_serializable_test/user.dart';

void main(List<String> arguments) {
  print('Hello world: ${json_serializable.calculate()}!');

  var json = {"name": "Alice", "age": 30};
  var user = User.fromJson(json);
  print(user.name); // Alice
  print(user.toJson()); // {name: Alice, age: 30}
}
