void main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  for (final c in callbacks) {
    c();
  }

  var collections = [1, 2, 3];

  collections.forEach(print);

  int i = 0;
  while (i < 3) {
    print('ok');
    i++;
  }

  i = 0;

  do {
    print('is ok!');
    i++;
  } while (i < 3);

  var log = () {
    return "";
  };
  log();
}
