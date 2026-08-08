import 'dart:io';

void main(List<String> arguments) {
  final inputFile = arguments.first;
  final List<String> list = File(inputFile).readAsLinesSync();
  for (var line in list) {
    final value = line.split(',');
    print(value[5]);
  }
}
