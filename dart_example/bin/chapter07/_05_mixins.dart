void main() {
  var student = Student('Liarsa', 20);
  student.action();

  var a = A();
  print(a);
}

mixin Say {
  void action() {
    print('Saying...');
  }
}

mixin Run {
  void action() {
    print('Running...');
  }
}

class Person {
  String name;
  double age;
  factory Person(String name, double age) {
    name = '$name Shepard';
    age = 100 + age;
    return Person._internal(name, age);
  }

  Person._internal(this.name, this.age);

  void action() {
    print('person action..');
  }
}

class Student extends Person with Run, Say {
  Student(String name, double age) : super._internal(name, age);
}

mixin class A {
  String name = '';
  A();
}

class Musician {}

mixin MusicalPerformer on Musician {}

class SingerDancer extends Musician with MusicalPerformer {}

abstract mixin class Musician2 {
  void playInstrument(String instrumentName);

  void playPiano() {
    playInstrument('Piano');
  }

  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician2 {
  void playInstrument(String instumentName) {
    print('Plays the $instumentName beautifully');
  }
}

class Novice with Musician2 {
  void playInstrument(String instumentName) {
    print('Plays the $instumentName poorly');
  }
}
