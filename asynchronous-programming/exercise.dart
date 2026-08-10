Future<int> countdown(int n) => Future.delayed(Duration(seconds: 1), () => n);

Future<void> main() async {
  for (var i = 5; i >= 0; i--) {
    print(await countdown(i));
  }
  print('done');
}
//instructors method
// Future<void> countdown(int n) async {
//   for (int i = n; i >= 0; i--) {
//     await Future.delayed(Duration(seconds: 1), () => print(i));
//   }
// }

// Future<void> main() async {
//   await countdown(5);
//   print('done');
// }
