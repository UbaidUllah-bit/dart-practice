void main() {
  List<String> phones = [
    'Oppo Reno 11F 5G',
    'Xiaomi Redmi Note 13 Pro',
    'Samsung Galaxy',
  ];
  Stream<String> incomingPhoneOrder = Stream.fromIterable(phones);
  incomingPhoneOrder.listen(
    (phone) => print('Generating COD invoice for: $phone'),
  );
  print("Invoice batch processing initiated in the background.");
}
