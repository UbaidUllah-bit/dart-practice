// Stream<String> fizzBuzz() async* {
//   for (var i = 1; i <= 15; i++) {
//     await Future.delayed(Duration(milliseconds: 500));
//     if (i % 3 == 0 && i % 5 == 0) {
//       yield 'fizz buzz';
//     } else if (i % 3 == 0) {
//       yield 'fizz';
//     } else if (i % 5 == 0) {
//       yield 'buzz';
//     } else {
//       yield '$i';
//     }
//   }
// }

// Future<void> main() async {
//   final values = fizzBuzz();
//   values.forEach(print);
//   final stream = fizzBuzz();
//   await for (var value in stream) {
//     print(value);
//   }
// }
Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  countSeconds(4);
  // await printOrderMessage();
}

// You can ignore this function - it's here to visualize delay time in this example.
//what this function does is
//the for loop
//has completed its activity by
//launching four Futures which are later catched by the event queue and displayed
//the timer is strictly outside the main activity thread
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
