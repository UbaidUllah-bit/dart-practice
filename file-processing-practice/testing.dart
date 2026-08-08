import 'dart:io';

void main(List<String> arguments) {
  final inputFile = arguments.first;
  final List<String> list = File(inputFile).readAsLinesSync();

  final totalGrossIncomeByCategory = <String, double>{};
  list.removeAt(0);

  for (var line in list) {
    final List<String> values = line.split(',');
    final cost = double.parse(values[5]);
    final category = values[3];
    final previousTotal = totalGrossIncomeByCategory[category];
    if (previousTotal == null) {
      totalGrossIncomeByCategory[category] = cost;
    } else {
      totalGrossIncomeByCategory[category] = previousTotal + cost;
    }
  }
  for (var entry in totalGrossIncomeByCategory.entries) {
    final costFormatted = entry.value.toStringAsFixed(1);
    final category = entry.key;

    print('$category : \$${costFormatted}');
  }
  var word = 'Hello World!';
  final values = word.split(' ');
  print(values);
}
