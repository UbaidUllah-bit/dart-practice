import 'point.dart';

class ClosedPath {
  List<Point> _points = [];

  void moveTo(Point point) {
    _points = [point];
  }

  void lineTo(Point point) {
    _points.add(point);
  }
}

void main() {
  //cascade operator
  //4x4 square below gentlemen
  final ClosedPath path = ClosedPath()
    ..moveTo(Point(0, 0))
    ..lineTo(Point(2, 0))
    ..lineTo(Point(2, 2))
    ..lineTo(Point(0, 2))
    ..lineTo(Point(0, 0));
  //what this does is executes all the methods first and then assigns the instance of the class to the member variable
  //the return types of the methods aren't necessary here
}
