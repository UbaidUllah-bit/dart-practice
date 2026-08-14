import 'dart:async';

Stream<String> interceptPackets() async* {
  for (var ip in [
    '192.168.1.50',
    '10.0.0.99',
    '192.168.1.105',
    '172.16.254.1',
  ]) {
    await Future.delayed(Duration(seconds: 1));
    yield ip;
  }
}

void main() {
  StreamController<String> firewallController = StreamController();
  firewallController.stream.listen(
    (ip) => print('[ALERT] Blocking malicious traffic coming from $ip'),
  );
  interceptPackets().listen((output) {
    if (!output.contains('192.')) {
      firewallController.sink.add(output);
    }
  }, onDone: firewallController.close);
}
