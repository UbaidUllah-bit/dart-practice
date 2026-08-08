void main() {
  final rows = [10, 12, 13, 14, 15];

  List<List<String>> screenGrid = List.generate(
    rows.length,
    (int index) => List.filled(rows[index], '[--]', growable: false),
    growable: false,
  );

  for (var screen in screenGrid) {
    print(screen);
  }
}
