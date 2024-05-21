void main() {
  var person = Person('name', 10)
    ..age = 10
    ..name = 'Hello world';

  print('$person');
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
}
