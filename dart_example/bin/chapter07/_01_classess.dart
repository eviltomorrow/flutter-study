import 'dart:math';

void main() {
  var p = Point(2, 2);
  assert(p.x == 2);
  double distance = p.distanceTo(Point(4, 4));
  print(distance);

  var p2 = Point.fromJson(x: 2, y: 2);
  double distance2 = p2.distanceTo(Point(4, 4));
  print(distance2);

  var p3 = const ImmutablePoint(2, 2);
  const p4 = ImmutablePoint(2, 2);
  var p5 = ImmutablePoint(2, 2);
  assert(identical(p3, p4));
  assert(!identical(p4, p5));

  var p6 = Point2();
  p6.x = 3;
  assert(p6.x == 3);
  assert(p6.y == null);

  print(greetBob(Person('Kathy', 10)));

  var i = Impostor(20);
  print(greetBob(i));

  assert(Queue.initialCapacity == 15);
}

class Point {
  double x;
  double y;

  Point(this.x, this.y);
  Point.fromJson({required this.x, required this.y});

  double distanceTo(Point other) {
    return 0;
  }
}

class ImmutablePoint {
  final double x;
  final double y;
  const ImmutablePoint(this.x, this.y);
}

class Point2 {
  double? x;
  double? y;
}

double initialX = 1.5;

class Point3 {
  double? x = initialX;
  // double? y = this.x;
  late double? z = this.x;

  Point3(this.x);
}

class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
  ProfileMark.name(this.name);
}

class Person {
  final String _name;
  double age;
  Person(this._name, this.age);

  String greet(String who) => 'Hello, $who. I am $_name, $age years old!';
}

class Impostor implements Person {
  @override
  double age;

  Impostor(
    this.age,
  );
  @override
  String get _name => '';

  @override
  String greet(String who) {
    return 'Hello, $who. I am $_name, $age years old!';
  }
}

String greetBob(Person person) => person.greet('Bob');

class Queue {
  static const initialCapacity = 15;
}

class Point4 {
  double x, y;
  Point4(this.x, this.y);

  static double distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}
