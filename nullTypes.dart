void main() {
  //Flow-analysis:Promotion
  /*Allows Nullable values to be promoted to non-nullable */

  //Definite Assignment
  /*Dart SDK knows for sure when a variable is assigned */
  int x = 10;
  int sign = x >= 0 ? 1 : -1;
  print(sign);

  //Assertion operator
  const y = -1;
  var maybeValue;
  if (y > 0) {
    maybeValue = y;
  }
  // int value =
  //     maybeValue!; //cannot assign a nullable value to a non-nullable variable, we use assertion operator when if sure that the nullable variable will have a non nullable value
  // print(value);
  maybeValue ??= 0;
  int value = maybeValue!;
  print(value);

  const cities = <String?>['London', 'Paris', null];

  for (var city in cities) {
    print(city?.toUpperCase()); //conditional access operator
  }
}
