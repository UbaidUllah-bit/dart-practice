//Factory constructors are useful when:
//Implement a constructor that doesn't always create a new instance of its class
//when we want to initalize a final variable using logic that can't be handled in the initializer list
import 'dart:math';

abstract class Shapes {
  const Shapes();
  double get area;
  double get perimeter;
  //factory constructors can return an instance of a subclass
  //factory constructors can execute any arbitrary logic first, and then return an instance
  factory Shapes.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('Invalid or missing side property');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('Invalid or missing radius property');
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
  double get perimeter => 2 * pi * radius;
}

void printValues(Shapes shape) {
  print('Area: ${shape.area}');
  print('Perimeter: ${shape.perimeter}');
}

void main() {
  final shapesJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 5.0,
    },
  ];
  final shapes =
      shapesJson.map((shapeJson) => Shapes.fromJson(shapeJson)).toList();
  shapes.forEach(printValues);
}
