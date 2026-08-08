import 'dart:io';
import 'package:Test/Cart.dart';
import 'package:Test/Product.dart';

const allProducts = <Product>[
  Product(id: 1, name: 'apple', price: 1.60),
  Product(id: 2, name: 'bananas', price: 0.70),
  Product(id: 3, name: 'courgettes', price: 1.0),
  Product(id: 4, name: 'grapes', price: 2.00),
  Product(id: 5, name: 'mushrooms', price: 0.80),
  Product(id: 6, name: 'potatoes', price: 1.50),
];

Product? chooseProduct() {
  final String productsList = allProducts
      .map((product) => product.displayName)
      .join('\n');
  stdout.write('Available products: \n$productsList\nYour choice: ');
  final String? choice = stdin.readLineSync();
  for (var product in allProducts) {
    if (product.initial == choice) {
      return product;
    }
  }
  print('not found');
  return null;
}

bool checkout(Cart cart) {
  if (cart.isEmpty) {
    print('Cart is Empty');
    return false;
  }
  final total = cart.total();
  print('Total: \$$total');
  stdout.write('Payment in cash: ');
  final payment = stdin.readLineSync();
  if (payment == null || payment.isEmpty) {
    return false;
  }

  final paid = double.tryParse(payment);

  if (paid == null) {
    return false;
  }

  if (paid >= total) {
    final change = paid - total;
    print('Change: \$${change.toStringAsFixed(2)}');
    return true;
  } else {
    print('Not enough cash');
    return false;
  }
}

void main() {
  final cart = Cart();
  while (true) {
    stdout.write(
      'What do you want to do: (v)iew cart / (a)dd to cart / (c)heck out: ',
    );
    final String? choice = stdin.readLineSync();
    if (choice == 'a') {
      final product = chooseProduct();
      if (product != null) {
        cart.addProduct(product);
        print(cart);
      }
    } else if (choice == 'v') {
      print(cart);
    } else if (choice == 'c') {
      if (checkout(cart)) {
        break;
      }
    } else {
      print('Invalid option, consider re-entering correct option.');
    }
  }
}
