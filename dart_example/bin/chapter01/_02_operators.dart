void main() {
  var person = Person('name', 10)
    ..age = 10
    ..name = 'Hello world';

  var student = Student()
    ..name = 'liarsa'
    ..age = 10;

  print('$person');
  print('$student');
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

class Student {
  late String name;
  late int age;
}
