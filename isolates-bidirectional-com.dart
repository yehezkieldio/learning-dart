import 'dart:isolate';

void worker(SendPort sendPort) {
  int randomNumber = DateTime.now().millisecondsSinceEpoch % 100;
  sendPort.send("Hello from worker isolate with number $randomNumber");
}

void main() async {
  final port = ReceivePort();

  await Isolate.spawn(worker, port.sendPort);

  await for (var message in port) {
    print('Main isolate received: $message');
    port.close(); // Close the port after receiving the first message
  }
}
