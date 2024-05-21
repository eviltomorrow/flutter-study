late String lazyDescription;

void main(){
  var name1 = 'Bob';
  Object name2 = 'Bob';
  String name3 = 'Bob';
  dynamic name4 = 'Bob';

  print('$name1, $name2, $name3, $name4');

  print(name3.toString());

  var nil = null;
  print(nil.toString());

  String? name5 = null;
  String name6 = 'Bob';
  print('$name5.hashCode, $name6.toString()');

  print(name5 == null);
  assert(name5 == null);

  bool weLikeToCount = _isLike();

  int lineCount ;
  if (weLikeToCount) {
    lineCount = 0;
  }else{
    lineCount = 2;
  }
  print('$lineCount');

  late String description;
  description = '';
  print(description);

  lazyDescription = "hello";
  print(lazyDescription);

  final name7 = 'Bob';
  final String name8 = 'Bob';
  print('$name7, $name8');

  const bar = 1000;
  const double atm = 1.01325 * bar;
  print('$atm');

  var foo =const [];
  final bac = const [];
  const baz = [];
  
  foo = [1,2,3];
  print(foo);

  print('$baz, $bac');

  const Object i = 3;
  const list = [i as int];
  // const map = {if (i is int) i: 'int'};
  // const set = {if (list is List<int>) ...list};
  print(list);
}


bool _isLike() {
  return false;
}