// // You are writing the onboard dashboard
// //software for a Yadea electric scooter. The system
// // needs to establish a network connection to the motor, and then continuously
// // stream the current speed to the dashboard
// class SpeedLimitException implements Exception {
//   final String message;
//   SpeedLimitException([this.message = 'Vehicle is going too fast']);
//   @override
//   String toString() {
//     return '$message';
//   }
// }

// Future<bool> connectToMotor() =>
//     Future.delayed(Duration(seconds: 2), () => true);

// Stream<String> streamSpeed() async* {
//   for (var speed in [0, 15, 30, 45, 50]) {
//     await Future.delayed(Duration(seconds: 1));
//     if (speed >= 50) {
//       throw SpeedLimitException(
//         "[WARNING] Motor cutoff engaged! Speed limit exceeded.",
//       );
//     }
//     yield 'Current Speed: $speed km/h';
//   }
// }

// Future<void> main() async {
//   try {
//     final bool result = await connectToMotor();
//     if (result) {
//       print('Successfully connected to motor');
//       streamSpeed().listen(
//         (speed) => print(speed),
//         onError: (error) => print(error),
//         onDone: () => print('Scooter powered down'),
//       );
//     }
//   } catch (e) {
//     print(e);
//   }
// }
Stream<int> countdown() async* {
  yield 3;
  yield 2;
  yield 1;
}

Future<void> main() async {
  print('Starting countdown...');
  // final finalNumber = countdown();
  // print('The final number is $finalNumber');
  await for (var value in countdown()) {
    await Future.delayed(Duration(seconds: 1));
    print('The current number is $value');
  }
  //countdown().listen((number) => print('The current number is $number'));
}
