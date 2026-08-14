class SecurityBreachException implements Exception {
  SecurityBreachException([this.message = 'Invalid port']);
  final String message;
  @override
  String toString() {
    return '$message';
  }
}

Future<List<int>> scanTarget() =>
    Future.delayed(Duration(seconds: 2), () => [22, 80, 443, 8080]);
Stream<String> analyzePorts(List<int> ports) async* {
  for (var port in ports) {
    await Future.delayed(Duration(seconds: 1));
    if (port == 8080) {
      throw SecurityBreachException('[ALERT] Unsafe port');
    }
    yield 'Port $port: Secure';
  }
}

Future<void> main() async {
  try {
    final ports = await scanTarget();
    analyzePorts(ports).listen(
      (message) => print(message),
      onDone: () => print('Operation completed'),
      onError: (error) => print(error),
    );
  } catch (e) {
    print(e);
  }
}
