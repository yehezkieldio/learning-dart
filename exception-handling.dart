void main() {
  String name = "Eliziel";

  try {
    print("Name: ${name}");

    // We generate an error by trying to access an index that is out of range.
    print(name[100]);

    // Different from TypeScript, we can catch an error with `on` and specify the type of error.
  } on RangeError catch (e) {
    print("We got a RangeError: ${e.message}");

    // We can also catch any error without specifying the type.
  } catch (e) {
    print("We got an error: ${e}");
  } finally {
    print("This block always executes.");
  }
}