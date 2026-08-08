void main() {
  const list = [2, 4, 6, 8];
  //'where' is used to perform filtering operations without the use of for loop
  final even = list.where((value) => value % 2 == 0);
  print(even);

  //'firstWhere' returns the first element that satisfies the condition
  final value = list.firstWhere((x) => x == 2, orElse: () => -1);
  print(value);

  /* Exercise implementing a where function */
  const list2 = [1, 2, 3, 4];
  final odd = where<int>(list2, (x) => x % 2 == 1);
  print(odd);

  final find5 = firstWhere(list2, (x) => x == 5, orElse: () => -1);
  print(find5);

  /* Exercise implementing a firstWhere function*/
}

T firstWhere<T>(
  List<T> list,
  bool Function(T) f, {
  required Function() orElse,
}) {
  for (var item in list) {
    if (f(item)) {
      return item;
    } else {
      continue;
    }
  }
  return orElse();
}

List<T> where<T>(List<T> list, bool Function(T) f) {
  final result = <T>[];

  for (var item in list) {
    if (f(item)) {
      result.add(item);
    }
  }
  return result;
}
