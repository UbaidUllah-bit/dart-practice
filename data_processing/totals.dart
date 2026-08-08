import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart totals.dart <inputFile.csv>');
    exit(1);
  }

  // 1. File(inputFile) creates the File object.
  // 2. .readAsLinesSync() is a specific action that a File object can perform.
  // 3. The final result of that action is handed over to your 'lines' variable as a List.

  // for (var line in lines) {
  //   print(line);
  // }

  final inputFile = arguments.first;
  final List<String> lines = File(inputFile).readAsLinesSync();

  print(lines[0]);

  final totalDurationByTag = <String, double>{};
  lines.removeAt(0);

  for (var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
  }
  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key;
    print('$tag : ${durationFormatted}h');
  }
}
