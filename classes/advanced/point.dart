import 'package:equatable/equatable.dart';

class Point extends Equatable {
  const Point(this.x, this.y);
  final int x;
  final int y;

  //class should be immutable when extending Equatable
  @override
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;

  // @override
  // int get hashCode => super.hashCode;s

  //both must methods must be overrided together

  // @override
  // bool operator ==(covariant Point other) {
  //   return x == other.x && y == other.y;
  //   //by using covariant we are able to change the type of an argument when overriding a method
  // }

  // @override
  // String toString() {
  //   return 'X: $x , Y: $y';
  // }

  Point operator +(covariant Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(int other) {
    return Point(x * other, y * other);
  }
}

void main() {
  print(Point(0, 0) == Point(0, 0));
  print(Point(1, 1));
}
