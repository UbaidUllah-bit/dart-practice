class FraudException implements Exception {
  const FraudException([this.message = '']);
  final String message;
  @override
  String toString() => 'Fraud Exception: $message';
}

void processCODOrder({required int orderAmount, required int cashHandedOver}) {
  try {
    if (orderAmount > 100000 && cashHandedOver == 0) {
      throw FraudException('Fraud detected, engaging missiles');
    }
    if (cashHandedOver < orderAmount) {
      throw Exception('Insufficient cash provided');
    }
  } on FraudException catch (e) {
    print(e);
    rethrow;
  } on Exception catch (e) {
    print("$e, Delivery failed: Not enough cash.");
  } finally {
    print('Transaction attempt closed. Driver returning to vehicle');
  }
}

void main() {
  try {
    processCODOrder(orderAmount: 100001, cashHandedOver: 0);
  } catch (e) {
    print('Main program has caught the escalating error!');
  }
  print('process completed');
}
