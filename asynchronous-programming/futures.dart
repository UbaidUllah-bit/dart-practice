// a Future represents a
// computation that doesn't complete
// immediately, and we can write
// asynchronous functions that return a
// Future, and we can await until the result
// is ready.

Future<String> fetchUserOrder() =>
    Future.delayed(Duration(seconds: 2), () => 'Cappuchino');
//Future."delayed" is a factory constructor other are "error", "value", sync, microtask
//mainly the quoted ones are used more frequently
Future<String> fetchUserOrder2() => Future.value('Espresso');
Future<String> fetchUserOrder3() => Future.error(UnimplementedError());
//Future.value and error are useful when you are designing a Future based API but you are not yet ready to write the final code
//you can use Future.error and unimplementedError as a place holder
// value and error can be used also when writing unique tests for classes that contains future-based apis
Future<void> main() async {
  print('Program started');
  // fetchUserOrder()
  //     .then((order) => print('Your $order is ready'))
  //     .catchError((error) => print(error))
  //     .whenComplete(() => print('done'));
  try {
    final order = await fetchUserOrder();
    print(order);
    final order2 = await fetchUserOrder3();
    print(order2);
  } catch (e) {
    print(e);
  } finally {
    print('done');
  }
  //await is used for the Future to complete and return a value
  //we can execute multiple futures using the await keyword
  //but the function must be made async in order to use await
  //PS: whenever you mark a func or method async you must make its return type Future
  //async/await + try/catch is a great way of working with Futures in dart
  //much better rather then using then, catchError and whenComplete
}
