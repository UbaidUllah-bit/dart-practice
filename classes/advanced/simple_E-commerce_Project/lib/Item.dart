import 'Product.dart';

class Item {
  const Item({required this._product, this.quantity = 1});

  final Product _product;
  final int quantity;
  double get price => quantity * _product.price;

  @override
  String toString() => '$quantity x ${_product.name}: $price';
}
