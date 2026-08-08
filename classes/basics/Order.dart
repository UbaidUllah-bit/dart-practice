import 'Product.dart';

class Order {
  Order({required this.customerId, required this.products, this.discountCode});
  final String customerId;
  final List<Product> products;
  final String? discountCode;
  double get orderTotal =>
      products.map((p) => p.price).reduce((value, element) => value + element);
}
