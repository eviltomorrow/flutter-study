void main() {
  final favoriteColor = Color.blue;
  if (favoriteColor == Color.blue) {
    print('Your favorite color is blue!');
  }

  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);

  List<Color> colors = Color.values;
  for (var color in colors) {
    print(color);
  }

  var aColor = Color.blue;
  switch (aColor) {
    case Color.red:
      print('red');
    default:
      print(aColor);
  }
}

enum Color {
  red('red'),
  green('green'),
  blue('blue'),
  ;

  final String desc;

  const Color(this.desc);

  String toString() => this.name;
}

enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0),
  ;

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  @override
  int compareTo(Vehicle other) {
    return carbonFootprint - other.carbonFootprint;
  }
}
