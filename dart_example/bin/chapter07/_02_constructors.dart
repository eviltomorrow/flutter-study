import 'dart:math';

void main() {
  var p = Point(0, 0);
  print(p.x);
  print(p.z);
}

class Point {
  double x = 0;
  double y = 0;
  double z = 0;

  Point(this.x, this.y) : z = x {
    this.x = this.x + 1;
    this.y = this.y + 10;
  }
}

const double xOrigin = 0;
const double yOrigin = 0;

class Point2 {
  final double x;
  final double y;

  Point2(this.x, this.y);

  Point2.origin()
      : x = xOrigin,
        y = yOrigin;
}

class Person {
  String name;
  int age = 0;
  Person(this.name);
  Person.build(this.name);
  Person.named({required this.name});
  Person.setAge(this.age, {this.name = ''});
}

class Student extends Person {
  Student(String name) : super(name);
  Student.build(String name) : super.build(name);
  Student.build2(super.name);
  Student.build3({required super.name})
      : super.setAge(
          0,
        );
}

class Point3 {
  double x, y;

  double distanceFromOrigin;

  Point3.fromJson(Map<String, double> json)
      : x = json['x']!,
        y = json['y']!,
        distanceFromOrigin =
            sqrt(json['x']! * json['x']! + json['x']! * json['x']!) {
    print('In Point.fromJson(): ($x, $y)');
  }

  Point3.withAssert(this.x, this.y, this.distanceFromOrigin) : assert(x > 0) {
    print('In Point.withAssert(): ($x, $y)');
  }
}

class Point4 {
  double x, y;
  Point4(this.x, this.y);

  Point4.alongXAxis(double x) : this(x, 0);
}

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;
  const ImmutablePoint(this.x, this.y);
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.build(String name) {
    return Logger._internal(name);
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) print(msg);
  }
}
