class Person {
  const Person({required this.name, required this.age});
  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is String && age is int) {
      return Person(name: name, age: age);
    } else {
      throw UnimplementedError(
          'Values are missing or they have the wrong type');
    }
  }
  Map<String, Object> toJson() => {
        'name': name,
        'age': age,
      };
  final String name;
  final int age;
}

void main() {
  final person = Person.fromJson({'name': 'Andrea', 'age': '20'});
  final json = person.toJson();
  print(json);
}
