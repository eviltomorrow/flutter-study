void main() {
  var t = SmartTelevision();
  t.turnOn();
  t.name = 'hi';
  print(t.name);
}

abstract class Television {
  String _name = '';

  set name(String name) => _name = name;
  String get name => _name;

  void turnOn() {
    print('in parent');
  }

  void turnOff();
}

class SmartTelevision extends Television {
  @override
  void turnOff() {
    print('turn off');
  }

  @override
  set name(String name) => super.name = name + ', fuck';

  void turnOn() {
    super.turnOn();
    print('in child');
  }

  void turnIn({double age = 3, required String name}) {}
}

class Fool<T extends Television> {
  T t;
  Fool(this.t);
  String toString() => "Instance of 'Foo<$T>'";
}

String watch<T extends Television>(List<T> list) {
  return '';
}
