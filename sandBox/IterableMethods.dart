void main() {
  //Revision
  /*where and firstWhere*/

  const list2 = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // final even = list.where((value) => value % 2 == 0);

  // final odd = list.firstWhere((value) => value % 2 == 1, orElse: () => -1);

  // print('Even Numbers: ${even}');
  // print('First Odd Number: ${odd}');

  // final factorsOf3 = where<int>(list, (x) => x % 3 == 0);
  // print(factorsOf3);

  // final numGreaterThan9 = firstWhere(list, (x) => x > 9, orElse: () => -1);
  // print(numGreaterThan9);

  /*forEach, map, reduce*/
  const list = [1.1, 2.1, 3.1, 4.1, 5.1, 6.1, 7.1, 8.1, 9.1, 10.1];
  list.forEach(print);

  final List<double> doubles = list.map((value) => value * 2).toList();

  final roundOff = transform<double, int>(list, (x) => x.round());
  final newDoubles = transform<int, int>(list2, (x) => x * 2);

  print(newDoubles);
  print(roundOff);

  final sum = list2.reduce((value, element) => value + element);
  print(sum);
  const emails = [
    'abc@gmail.com',
    'me@example.com',
    'john@gmail.com',
    'katy@yahoo.com',
    'abc@cuilahore.edu.pk',
  ];

  const knownDomains = ['yahoo.com', 'cuilahore.edu.pk'];
  final UnknownDomains = emails
      .map((email) => email.split('@').last)
      .where((domain) => !knownDomains.contains(domain))
      .toSet();

  print(UnknownDomains);
}

// Set<String> getUnknownDomains(List<String> emails, List<String> knownDomains) {
//   final result = <String>{};
//   for (var email in emails) {
//     final domain = email.split('@').last;
//     if (!knownDomains.contains(domain)) {
//       result.add(domain);
//     }
//   }
//   return result;
// }

List<R> transform<T, R>(List<T> list, R Function(T) f) {
  var result = <R>[];
  for (var item in list) {
    result.add(f(item));
  }
  return result;
}

// T firstWhere<T>(
//   List<T> list,
//   bool Function(T) f, {
//   required Function() orElse,
// }) {
//   for (var item in list) {
//     if (f(item)) {
//       return item;
//     }
//   }
//   return orElse();
// }

// List<T> where<T>(List<T> list, bool Function(T) f) {
//   final result = <T>[];
//   for (var item in list) {
//     if (f(item)) {
//       result.add(item);
//     }
//   }
//   return result;
// }
