class Product {
  const Product({required this.name, required this._price});
  final String name;
  final double _price;

  double get price => _price;
}
