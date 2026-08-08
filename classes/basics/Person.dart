class Person {
  const Person({required this.name, required this.age, required this.height});

  final String name;
  final int age;
  final double height;

  @override
  String toString() {
    return 'My name is $name. I am $age years old, I am $height cm tall.';
  }
}
