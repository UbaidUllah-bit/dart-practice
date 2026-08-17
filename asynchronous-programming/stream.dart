// A stream is a sequence of asynchronous events
// and you can think of it as an asynchronous iterable
// where events are delivered over time rather than
// when you ask for them
// ways to create / add values to a stream
// Stream.fromIterable
// stream generator (async*, yield)
// StreamController :- gives more control on how we add
// items to the stream

//rule of thumb
//use await for loop, for streams like for async*, yield ones
//and listen() to catch the added entities or events in stream and Whether the stream
// is coming from a StreamController or an async* generator,
// .listen() sets up a background trap.
//additionally must use await for a future

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Future<int> sumStreamR(Stream<int> stream) =>
    stream.reduce((previous, element) => previous + element);

Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    //we can do some asynchronous work
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i;
  }
}

// Iterable and streams are very similar
// They can be iterated over with a for loop
// They can be created with a generator functions
// They share many methods to process and modify items
// only difference is Iterables are synchronous and streams are asynchronous

// Iterable<int> count(int n) sync* {
//   for (var i = 1; i <= n; i++) {
//     yield i;
//   }
// }

// int sumIterable(Iterable<int> iterable) =>
//     iterable.reduce((value, element) => value + element);

Future<void> main() async {
  final stream = Stream<int>.fromIterable([1, 2, 3, 4]);
  final sum = await sumStream(stream);
  print('Sum: $sum');

  final stream2 = countStream(4);
  final sum2 = await sumStream(stream2);
  print('Sum: $sum2');

  // final iterable = count(4);
  // final iterableSum = sumIterable(iterable);
  // print('Sum: $iterableSum');
}
