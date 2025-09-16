// Dart uses single-inheritance, mixin based OOP model,
// it means a class can only extend one superclass but can implement multiple interfaces and mix in multiple mixins.
// Mixins are a way of reusing a class's code in multiple class hierarchies.
// in Rust or TypeScript context, mixins are similar to traits or interfaces with default implementations.

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() => print('Hello, I am $name');
}

// extends - indicates that Employee is a subclass of Person
class Employee extends Person {
  String role;

  // super - calls the constructor of the superclass (Person)
  Employee(String name, int age, this.role) : super(name, age);

  @override
  void greet() => print('Hello, I am $name and I work as $role');
}

// abstract class - cannot be instantiated directly, meant to be subclassed
abstract class Animal {
  void speak();
}

class Dog implements Animal {
  @override
  void speak() => print('Woof!');
}

// Every class in Dart is both a class and an interface.
// `implements` forces a class to implement all the methods of the interface.

mixin CanFly {
  void fly() => print('Flying...');
}
// Composition pattern, no constructor, no state in mixin

class Bird with CanFly {}

// static members - belong to the class itself rather than an instance of the class
class MathUtils {
  static double pi = 3.14;
  static double square(double n) => n * n;
}

// encapsulation - using private variables and getters/setters
class BankAccount {
  double _balance = 0; // private variable (conventionally, underscore prefix)

  void deposit(double amount) => _balance += amount;
  double get balance => _balance; // getter to access the private variable
}

// generics - allows classes and methods to operate on different data types while providing compile-time type safety
class Box<T> {
  T content;

  Box(this.content);

  void showContent() => print('Box contains: $content');
}
