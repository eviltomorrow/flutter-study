void main() {
  var value = 1;
  switch (value) {
    case 1:
      print("1");
  }

  const a = 1;
  const b = 2;
  List<int> list = [1, 2];
  switch (list) {
    case [var a, b]:
      print('$a, $b');
      print('match');
  }

  var numList = [1, 2, 3];
  var [_, _, c] = numList;
  print("$c");

  switch (numList) {
    case [a || b, var c, _]:
      print('$c');
  }

  var (x, [y, z]) = ('str', [1, 2]);
  print('$x, $y, $z');

  var (m, n) = ('left', 'right');
  (m, n) = (n, m);
  print('$m , $n');

  var o1 = _generateObject('num');
  switch (o1) {
    case 1:
      print('one');
    default:
      print('unknown');
  }

  var o2 = _generateObject('range');
  const first = 2;
  const second = 20;
  switch (o2) {
    case >= first && <= second:
      print('in range');
    default:
      print('unknown');
  }

  var o3 = _generateObject('record');
  var (s1, s2) = o3;
  print('$s1, $s2');

  var color = Color.red;
  var isPrimary =
      switch (color) { Color.red || Color.blue => true, _ => false };

  print(isPrimary);

  var pair = _generatePair();
  switch (pair) {
    case (int a, int b, _) when a > b:
      print('First element greater');

    case (int _, int _, _):
      print('First element not greater');
  }

  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }

  final Foo myFoo = Foo();
  var Foo(:one, :two) = myFoo;
  print('$one, $two');
}

(int, int, int) _generatePair() {
  return (1, 2, 3);
}

dynamic _generateObject(String kind) {
  switch (kind) {
    case "num":
      return 1;
    case "range":
      return 10;
    case "record":
      return (2, 'b');
    default:
      return null;
  }
}

enum Color {
  red,
  yellow,
  blue;
}

class Foo {
  String one = '';
  int two = 2;
}
