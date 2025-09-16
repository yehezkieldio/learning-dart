Future<void> someAsyncFunction() async {
  await Future.delayed(Duration(seconds: 1));
  print('Async operation complete');
}

void main() {
  someAsyncFunction();
}