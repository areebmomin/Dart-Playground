void main() {
  /// Enum
  // used to represent a fixed number of constant values.

  // sample 1
  Color.red;

  // sample 2
  // enum can declare classes with fields, methods, and const constructors
  Vehicle.bicycle;

  // Usage 1
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);

  // Usage 2
  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);

  // Usage 3
  var aColor = Color.blue;
  switch (aColor) {
    case Color.red:
      print('Red as roses!');
    case Color.green:
      print('Green as grass!');
    case Color.blue:
      print('Blue as sky!');
    // default: // Without this, you see a WARNING.
    //   print(aColor); // 'Color.blue'
  }

  // Usage 4
  print(Color.blue.name); // 'blue'

  // Usage 5
  print(Vehicle.car.carbonFootprint);
}

// enum sample 1
enum Color { red, green, blue }

// enum sample 2
enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 800),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({
    required this.tires,
    required this.passengers,
    required this.carbonPerKilometer,
  });

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootprint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this == Vehicle.bicycle;

  @override
  int compareTo(Vehicle other) => carbonFootprint - other.carbonFootprint;
}
