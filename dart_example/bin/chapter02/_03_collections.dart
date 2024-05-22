void main() {
  var listInt = [1, 2, 3];
  var listStr = ['a', 'b', 'c'];

  print('$listInt, $listStr');

  assert(listInt.length == 3);
  assert(listInt[1] == 2);

  listInt[1] = 3;
  assert(listInt[1] == 3);

  var constantList = const [1, 2, 3];
  print(constantList);

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};

  Set<String> names2 = {};
  print('$names2, $names');

  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  assert(elements.length == 5);

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  gifts.containsKey('first');

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(nobleGases);

  var map1 = Map<String, String>();
  map1["hello"] = 'hello';

  var list_a = [1, 2, 3];
  var list_b = [0, ...list_a];
  print(list_b);

  List<int>? list_c = [1, 2, 3];
  list_c = null;
  var list_d = [0, ...?list_c];
  print(list_d);
}
