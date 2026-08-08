void main() {
  const multiplier = 10;
  const list = [1, 2, 3];
  final result = list.map((x) {
    return x * multiplier;
    //when we use a variable which is defined outside the scope of the
    // function then it is known as closure
  });
  print(result);
  // var products = [
  //   {"name": "Screwdriver", "price": 42.00},
  //   {"name": "Wingnut", "price": 0.50},
  // ];
  // var values = products.map((product) {
  //   return product['price'] as double;
  // });
  // print(values);
}
