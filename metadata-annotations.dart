@deprecated
void oldFunction() {
  print('This function is deprecated.');
}

class Example {
  @override
  String toString() => 'Example class';
}

class Api {
  final String route;
  const Api(this.route);
}

@Api('/users')
class UserService {
  void fetchUsers() {}
}
