// import 'dart:io';

/*Future*/
// Future<String> delayedDots() async => Future.delayed(Duration(seconds: 1), () => '.');
// Future<void> main() async {
//   stdout.write('Starting the program');
//   for (var i = 0; i <= 5; i++) {
//     stdout.write(await delayedDots());
//   }
//   print('\nHello');
// }

/*Stream.fromIterable*/
// You use this when you already have all your data sitting perfectly complete in a standard,
// synchronous collection (like a List or a Set),
// but you need to process it asynchronously
//  as a flow of events

// void main() {
//   // 1. You already have the data in a static, synchronous List
//   List<String> emailDatabase = [
//     'user1@example.com',
//     'user2@example.com',
//     'user3@example.com',
//   ];

//   print('Starting bulk email sender...');

//   // 2. Convert the List into a Stream
//   Stream<String> emailStream = Stream.fromIterable(emailDatabase);

//   // 3. Listen to the stream just like any other
//   emailStream.listen((email) {
//     print('Sending newsletter to: $email');
//   });

//   print('Email task queued in the background.');
// }

/*StreamController*/
// import 'dart:async'; // Required for StreamController

// workflow? synchronous code is executed first and then asynchronous for instance if stream.listen() finds
// a sink.add() it is executed and stream.listen() is put to sleep

// void main() {
//   // 1. Set up the commentary microphone (The Controller)
//   // This is the core engine that manages both the input and the output.
//   final matchController = StreamController<String>();

//   // 2. The audience tunes in (The Listener)
//   // We are telling Dart what to do whenever new data flows out of the stream.
//   matchController.stream.listen((move) {
//     print('Grandmaster plays: $move');
//   });

//   // 3. The match begins!
//   // We manually push unpredictable data into the 'sink' (the microphone input).
//   print('The match has officially started.');

//   matchController.sink.add('e4'); // King's Pawn Opening
//   matchController.sink.add('e5');
//   matchController.sink.add('Nf3'); // Knight attacks
//   matchController.sink.add('Nc6'); // Knight defends

//   // 4. The match concludes.
//   // We MUST close the controller to prevent memory leaks!
//   matchController.close();
//   print('Match drawn by agreement. Closing broadcast.');
// }

/*using async* and yield*/
// Instead of manually tossing data into a StreamController from the outside,
// we are going to build a machine that generates its own data from the inside
// async* tells dart that this function will not just return
// one Future but a continous stream of values
// as return kills the function completely, yield pushes a single
// value out of the function but keeps the function alive and running
// to produce the next value
// 1. The Generator Function
// Notice the 'async*' and that it returns a Stream<int>

// Stream<int> countdownTimer(int seconds) async* {
//   for (int i = seconds; i > 0; i--) {
//     // We pause the assembly line for 1 second
//     await Future.delayed(Duration(seconds: 1));

//     // We push the current number out to the listener
//     yield i;
//   }
// }

// void main() {
//   print('Initiating launch sequence...');

//   // 2. The Listener
//   // We call our generator function and set our "trap" to listen to it
//   countdownTimer(5).listen((tick) {
//     print('T-Minus: $tick');
//   });

//   print('Systems are go. Waiting for countdown...');
// }
