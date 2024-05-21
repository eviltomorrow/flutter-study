void main() {
  // Numbers (int, double)
  // Strings (String)
  // Booleans (bool)
  // Records ((value1, value2))
  // Lists (List)
  // Sets (Set)
  // Maps (Map)
  // Runes (Runes)
  // Symbols (Symbol)
  // The value null (Null)

  var x = 1;
  var hex = 0xDEADBEFE;

  var y = 1.1;
  var exponents = 1.42e5;
  print('$x, $hex, $y, $exponents');

  int a = 1;
  double b = 2.5;
  var c = a + b;
  print(c);

  var one = int.parse('1');
  print(one == 1);

  var onePointOne = double.parse('1.1');
  print(onePointOne == 1.1);

  String oneAsString = 1.toString();
  print(oneAsString == "1");

  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString == '3.14');

  const msPerSecons = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecons;
  print(msUntilRetry);

  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print('$s1, $s2, $s3, $s4');

  var s = 'string interpolation';
  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');

  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  var ss1 = 'String '
      'concatenation'
      ' works even over line breaks.';

  assert(ss1 ==
      'String '
          'concatenation'
          ' works even over line breaks.');

  var ss2 = "The + operator " + 'works, as well';
  assert(ss2 == 'The + operator works, as well');

  var ss3 = '''
You can create
   multi-line strings like this one.
''';

  var ss4 = """
This is also a\n
multi-line string.
""";

  print(ss3);
  print(ss4);

  var ss5 = r'In a raw string, not even \n get special treatment';
  print(ss5);

  var fullName = '';
  assert(fullName.isEmpty);

  var hitPoints = 0;
  assert(hitPoints == 0);

  // var unicorn = null;
}
