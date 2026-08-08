void main() {
  //use to combine all items inside a list and produce a result
  //example: sum of all the items in a list

  const list = [1, 2, 3, 4];
  final sum = list.reduce((value, element) => value + element);
  print(sum);
  //value   : 1 2 6 10
  // element: 2 3 4

  const emails = [
    'abc@gmail.com',
    'me@example.co.uk',
    'john@gmail.com',
    'katy@yahoo.com',
  ];

  const knownDomains = ['gmail.com', 'yahoo.com'];

  //imperative-style
  final unknownDomains = getUnknownDomains(emails, knownDomains);

  //functional-style
  final unknownDomains2 = emails
      .map((email) => email.split('@').last)
      .where((domain) => !knownDomains.contains(domain));

  print(unknownDomains);
  //look into these operators too any, every, expand, fold, lastWhere, singleWhere, skip, skipWhile, take, takeWhile, whereType
}

Iterable<String> getUnknownDomains(
  List<String> emails,
  List<String> knownDomains,
) {
  var result = <String>[];
  for (var email in emails) {
    final domain = email.split('@').last;
    if (!knownDomains.contains(domain)) {
      result.add(domain);
    }
  }
  return result;
}
