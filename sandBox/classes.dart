import 'dart:math';

abstract class Shapes {
  const Shapes();

  double get area;
  double get perimeter;

  factory Shapes.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnimplementedError('Invalid or missing side');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnimplementedError('Invalid or missing radius');
      default:
        throw UnimplementedError('shape $type not recognized');
    }
  }
}

class Square extends Shapes {
  const Square(this.side);
  final double side;
  @override
  double get area => side * side;
  @override
  double get perimeter => 4 * side;
}

class Circle extends Shapes {
  const Circle(this.radius);
  final double radius;
  @override
  double get area => pi * radius * radius;
  @override
  double get perimeter => 2 * pi * radius;
}

void printValues(Shapes shape) {
  if (shape is Circle) {
    print('Shape: Circle');
  } else {
    print('Shape: Square');
  }
  print('Area: ${shape.area}');
  print('Perimeter: ${shape.perimeter}');
}

void main() {
  final shapesJson = [
    {'type': 'square', 'side': 10.0},
    {'type': 'circle', 'radius': 5.0},
  ];

  final shapes = shapesJson.map((shapeJson) => Shapes.fromJson(shapeJson));
  shapes.forEach(printValues);
  User.validateInput('Batman');
}

class User {
  User._(this.input);
  final input;
  factory User.validateInput(String string) {
    switch (string) {
      case 'admin':
        return User._('admin');
      case 'User':
        return User._('user');
      default:
        throw UnimplementedError('Invalid input');
    }
  }
}
