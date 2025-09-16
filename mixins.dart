// A Mixin is a chunk of reusable code that can be injected into multiple class without using inheritance.

// no constructor
// can hold methods and fields
// applied to a class using the 'with' keyword
// added before the `extends` keyword if the class also extends another class
// unlike interfaces, mixins can contain method implementations and state (fields).

// avoid state-heavy mixins as they can lead to complex and hard-to-maintain code.
// prefer mixins for capabilities and behaviors that can be shared across different classes.
// Dart applies mixins in a left-to-right order, meaning that if multiple mixins define the same method or property, the one on the right takes precedence.

mixin Logger {
  void log(String message) {
    final time = DateTime.now().toIso8601String();
    print('[$time] $message');
  }
}

class PaymentProcessor with Logger {
  void processPayment(double amount) {
    log('Processing payment of \$$amount');
    log('Payment of \$$amount processed successfully');
  }
}

// Mixins can hold boilerplate for channels so,
// multiple services share the same code without duplicating it.
mixin NetworkService {
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 1));
    return 'Fetched Data';
  }
}

class ApiService with NetworkService {}

class CacheService with NetworkService {}

void main() {
  final processor = PaymentProcessor();
  processor.processPayment(100.0);
}
