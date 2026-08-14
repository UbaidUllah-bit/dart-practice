Future<void> main() async {
  final stream = Stream.fromIterable([1, 2, 3]);
  // Stream.value(10);
  // Stream.error('Something went wrong');
  // Stream.empty();
  // Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));
  // Stream.periodic(Duration(seconds: 1), (index) => index).forEach(print);
  // final value = await stream.first;
  // print(value);
  await stream.forEach(print);
  await stream.map((num) => num * 2).where((value) => value > 3).forEach(print);
}
