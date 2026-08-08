import 'dart:math';

abstract class Shapes {
  double get area;
  double get perimeter;
}

class Square implements Shapes {
  Square(this.side);
  final double side;
  @override
  double get area => side * side;
  @override
  double get perimeter => 4 * side;
}

class Circle extends Shapes {
  Circle(this.radius);
  final double radius;
  @override
  double get area => pi * radius * radius;
  double get perimeter => 2 * pi * radius;
}

void printValues(Shapes shape) {
  print('Area: ${shape.area}');
  print('Perimeter: ${shape.perimeter}');
}

void main() {
  final Shapes square = Square(14);
  final Shapes circle = Circle(4);
  final list = <Shapes>[square, circle];
  list.forEach(printValues);
}
