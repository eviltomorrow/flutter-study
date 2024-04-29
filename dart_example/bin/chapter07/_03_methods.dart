import 'dart:math';

void main() {
  var p = Point(2, 2);
  print(p.distanceTo(Point(4, 4)));

  final v = Vector(2, 3);
  final w = Vector(2, 2);

  print(v + w == Vector(4, 5));
  print(v - w == Vector(0, 1));

  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left == 3);
  rect.right = 12;
  print(rect.left == -8);
}

class Point extends Object {
  final double x, y;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  int get hashCode => Object.hash(x, y);
}

class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left + width;
  set right(double value) => left = value - width;

  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

abstract class Doer {
  void doSomething();
}

class EffectiveDoer extends Doer {
  void doSomething() {}
}
