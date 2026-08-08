void main() {
  //forEach, map, where, reduce
  //Generics

  const list = [1, 2, 3];
  list.forEach((value) => print(value));
  //forEach takes a void Function(int) argument
  //print method has type void Function(Object)
  //this is ok because int is an object
  list.forEach(print);

  //map operator does the following things
  /* -take a collection
     -transform all its items
     -return a new collection
     useful we can apply any kind of transformation with very little code
  */

  final Iterable doubles = list.map((value) => value * 2);
  //can also do this other than the above code line
  //final List<int> doubles = list.map((value) => (values*2).toList());
  //an "iterable" is a collection of elements
  //that can be accessed sequentially
  //list and sets are iterables
  //lazy iterable:
  /*the anonymous function is not evaluated until the result is used
  (performance optimization)
  simply put it is only utilized if it is assigned to a Iterable variable (or a collection variable if .toList() or .toSet() is used because list and set inherit parent class iterable) or printed*/

  print(doubles);

  const doublesList = [1.0, 1.1, 1.2];
  //Anonymous Function and Generics
  final newDoubles = transform<int, int>(list, (x) => x * 2);
  final rounded = transform<double, int>(doublesList, (x) => x.round());
  print(newDoubles);
  print(rounded);
}

List<R> transform<T, R>(List<T> items, R Function(T) f) {
  var result = <R>[];
  for (var item in items) {
    result.add(f(item));
  }
  return result;
}
