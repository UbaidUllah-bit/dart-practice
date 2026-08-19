class Pokemon {
  factory Pokemon.fromJson(Map<String, Object?> json) {
    final id = json['id'] as int;
    final name = json['name'] as String;
    final height = (json['height'] as num).toDouble();
    final weight = (json['weight'] as num).toDouble();
    final typesList = json['types'] as List;
    final extractedTypes = typesList.map((slotObj) {
      final typeMap = slotObj['type'] as Map<String, Object?>;
      return typeMap['name'] as String;
    }).toList();
    return Pokemon(
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: extractedTypes,
    );
  }
  const Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
  });
  final int id;
  final String name;
  final double height;
  final double weight;
  final List<String> types;

  @override
  String toString() =>
      '''
  === POKEDEX ENTRY ===
  ID: #$id
  Name: ${name.toUpperCase()}
  Types: ${types.join(', ')}
  Height: ${height / 10} m
  Weight: ${weight / 10} kg
  =====================
  ''';
}
