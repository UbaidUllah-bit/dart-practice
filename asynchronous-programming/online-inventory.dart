// Future<int> checkInventory() => Future.delayed(Duration(seconds: 3), () => 5);
// Future<void> main() async {
//   print('1. Contacting bookstore database...');
//   final int number = await checkInventory();
//   print('2. We have $number copies of The Metamorphosis in stock.');
// }

// Future<String> fetchMeritList() => Future.delayed(
//   Duration(seconds: 3),
//   () => throw Exception('Server 502: Bad Gateway'),
// );

// Future<void> main() async {
//   try {
//     await fetchMeritList();//will explode showing stack trace it await is removed, because the future exception isn't catched
//   } catch (e) {
//     print('Could not load merit list. The university server is down.');
//   } finally {
//     print('Automated check completed');
//   }
// }
Future<String> checkNUCES() =>
    Future.delayed(Duration(seconds: 2), () => 'NUCES: Admitted');

Future<String> checkPUCIT() =>
    Future.delayed(Duration(seconds: 2), () => 'PUCIT: Pending');

Future<String> checkComsats() =>
    Future.delayed(Duration(seconds: 2), () => 'Comsats: Admitted');

Future<void> main() async {
  final List<String> result = await Future.wait([
    checkNUCES(),
    checkPUCIT(),
    checkComsats(),
  ]);
  result.forEach(print);
}
