// Nested Types

typedef Json = Map<String, dynamic>;
typedef ApiResponse<T> = ({String status, T data, DateTime timestamp});

// Use records to represent structured data
// and generics for reusable components
ApiResponse<List<Json>> fetchUsers() =>
    (status: "ok", data: [], timestamp: DateTime.now());

class Repository<T> {
  final List<T> _items = [];
  void add(T item) => _items.add(item);
  List<T> get all => List.unmodifiable(_items);
}

// Sealed class is a base class with limited subclasses
sealed class Result<T> {}

class Success<T> extends Result<T> {
  final T value;
  Success(this.value);
}

class Failure<T> extends Result<T> {
  final String message;
  Failure(this.message);
}

// Sealed classes is like discriminated unions in TypeScript

// Instead of cryptic inline function types
typedef Transformer<I, O> = O Function(I input);
// we can use a type alias
O execute<I, O>(Transformer<I, O> fn, I input) => fn(input);

// the above code is a way to define a function type alias
// and use it in a generic function
