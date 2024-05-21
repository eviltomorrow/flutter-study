void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (String, int) record2;
  record2 = ('A string', 123);
  print(record2);

  ({String a, int b}) record3;
  record3 = (a: 'shepard', b: 10);
  print(record3);

  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 1, y: 2);
  print(recordAB == recordXY);

  (int a, int b) record_ab = (1, 2);
  (int x, int y) record_xy = (1, 2);
  print(record_ab == record_xy);

  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);

  var (name, age) = userInfo(json);
  print('$name, $age');

  final (:color) = userInfo2(json);
  print('$color');

  (num, Object) pair = (42, 'object');
  (int, String) pair_s = (42, 'object');
  print(pair_s == pair);
}

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

(String, int) userInfo(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

({String color}) userInfo2(Map<String, dynamic> json) {
  return (color: json['color']);
}

final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};
