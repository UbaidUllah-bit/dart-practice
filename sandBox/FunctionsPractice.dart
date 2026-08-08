// //typedef details = int Function(int);
// typedef int Details(int argument);
// int getAge(int age) => age;
// int getDOB(int dob) => dob;
// int getHeightInInches(int height) => height;

// typedef List<String> Subjects(List<String> args);

// List<String> artSub(arts) => arts;
// List<String> scienceSub(science) => science;
// List<String> historySub(history) => history;

// void main() {
//   info(getAge, 18, 'age');
//   info(getDOB, 1976, 'DOB');
//   info(getHeightInInches, 67, 'Height');

//   subjectInfo(artSub, [
//     'English',
//     'Technical & Business Writing',
//     'Functional English',
//     'Expository Writing',
//   ]);

//   subjectInfo(scienceSub, ['Biology', 'Chemisty', 'Physics']);

//   subjectInfo(historySub, [
//     'Roman Empire',
//     'The Civilization of Mesopotamia',
//     'Shing Dynasty',
//   ]);
// }

// void info(Details details, int data, String type) {
//   print(' Your $type is ${details(data)}');
// }

// void subjectInfo(Subjects subject, List<String> values) {
//   print(subject(values));
// }
// void main() {
//   const multiplier = 10;
//   const list = [2, 4, 6];
//   final Iterable result = list.map((x) {
//     return x * multiplier;
//   });
//   print(result);

//   var products = {
//     {"name": "Screwdriver", "price": 42.00},
//     {"name": "Wingnut", "price": 0.50},
//   };

//   var values = products.map((product) {
//     return product['price'] as double;
//   });
//   print(values);
// }

typedef Observations = String Function(String);

String witnesses(name) => '$name';
String evidences(evd) => '$evd';
String location(loc) => '$loc';
String time(time) => '$time';

void main() {
  final witness = murderDetails(witnesses, 'An Old Man, ShopKeeper');
  final evidence = murderDetails(
    evidences,
    'Blood on Baton, Blood spewed on road',
  );

  final SourceLocation = murderDetails(location, 'Gajjumata');
  final ogtime = murderDetails(time, '${DateTime.now()}');

  print(witness);
  print(evidence);
  print(SourceLocation);
  print(ogtime);
}

String murderDetails(Observations obs, String data) {
  return 'Murder Details: ${obs(data)}';
}
