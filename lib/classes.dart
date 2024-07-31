void main() {
  /// Classes

  // Object class
  // The base class for all Dart objects except null.

  // class

  // sample
  var p = Point(2, 2);

  // sample 2
  print('The type of a is ${p.runtimeType}');

  // -----------------------------------------------------------------------------

  // constructors
  // Constructor names can be either 'ClassName' or 'ClassName.identifier'

  // sample
  var p1 = Point(2, 2);

  // named constructor
  var p2 = Point.fromJson({'x': 1, 'y': 2});

  // -----------------------------------------------------------------------------

  // const constructors
  // If your class produces objects that never change, you can make these objects compile-time constants

  // sample
  var constObj = const ImmutablePoint(2, 2);

  // sample 2
  var a = const ImmutablePoint(1, 1);
  var b = const ImmutablePoint(1, 1);
  print(identical(a, b)); // They are the same instance!

  // sample 3
  var x = const ImmutablePoint(1, 1);
  var y = const ImmutablePoint(2, 2);
  print(identical(x, y)); // They are different instance!

  // sample 4
  var c = const ImmutablePoint(1, 1); // Creates a constant
  var d = ImmutablePoint(1, 1); // Does NOT create a constant
  print(identical(c, d)); // NOT the same instance!

  // -----------------------------------------------------------------------------

  // instance variable

  // sample 1
  InstanceSample1(1, 2);

  // sample 2
  // non-late instance variable sets the value before the constructor and its initializer list execute.
  // As a result, non-late instance variable can't access 'this'.
  // InstanceSample2(1, 2);

  // -----------------------------------------------------------------------------

  // Implicit interfaces
  // Every class implicitly defines an interface containing all the instance members of the class
  // and of any interfaces it implements.

  // sample
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));

  // -----------------------------------------------------------------------------

  // static variable and method

  // sample 1
  assert(Queue.initialCapacity == 16);

  // sample 2
  print(Queue.distanceBetween());

  // -----------------------------------------------------------------------------

  // super

  // sample
  Vector3d(1, 2, 3);

  // -----------------------------------------------------------------------------

  // Redirecting constructors
  // redirect to another constructor in the same class

  // sample
  Redirecting.alongXAxis(3);

  // -----------------------------------------------------------------------------

  // Factory constructors
  // factory constructor doesn't necessarily create a new instance of its class every time it's invoked
  // Instead, it can return an existing instance or even a different subtype of the class.

  // sample
  var logger1 = Logger('MainLogger');
  var logger2 = Logger('SecondaryLogger');
  var logger3 = Logger('MainLogger');

  // Both logger1 and logger2 are the same instance
  print(logger1 == logger2); // Output: false
  print(logger1 == logger3); // Output: true

  logger1.log('Hello, world!'); // Output: [MainLogger]: Hello, world!
  logger2.log('Hello, world!'); // Output: [MainLogger]: Hello, world!

  // sample 2
  final circle = Shape('circle');
  final square = Shape('square');

  print('Circle area: ${circle.area}'); // Output: Circle area: 12.56
  print('Square area: ${square.area}'); // Output: Square area: 4.0

  // -----------------------------------------------------------------------------

  // Operators

  // sample 1
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));

  // -----------------------------------------------------------------------------

  // Getter and Setter
  // instance variable has an implicit getter, plus a setter if appropriate.
  // You can create additional properties by implementing getters and setters, using the get and set keywords

  // sample
  var rect = Rectangle(3, 4, 20, 15);
  assert(rect.left == 3);
  rect.right = 12;
  assert(rect.left == -8);

  // -----------------------------------------------------------------------------

  // Abstract class
  // Its interface is defined implicitly but leaving its implementation up to other classes.
  // Instance, getter, and setter methods can be abstract

  // sample
  EffectiveDoer();

  // -----------------------------------------------------------------------------
}

// -----------------------------------------------------------------------------

// class sample
class Point {
  Point(int a, int b) {
    this.a = a;
    this.b = b;
  }

  // Named constructor with initializer list
  // initializer list initialize instance variables before the constructor body runs
  Point.fromJson(Map<String, dynamic> json)
      : a = json['x'] ?? 0,
        b = json['y'] ?? 0;

  int a = 0;
  int b = 0;
}

// -----------------------------------------------------------------------------

// constant constructor example
class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  const ImmutablePoint(this.x, this.y);
}

// instance variable sample 1
class InstanceSample1 {
  double? x; // Declare instance variable x, initially null.
  double z = 0; // Declare z, initially 0.
  double a; // Declare a, initializes in constructor

  InstanceSample1(double z, this.a) {
    this.z = z;
  }
}

// -----------------------------------------------------------------------------

// instance variable sample 2
double initialX = 1.5;

class InstanceSample2 {
  // OK, can access declarations that do not depend on `this`:
  double? x = initialX;

  // ERROR, can't access `this` in non-`late` initializer:
  // double? y = this.x;

  // OK, can access `this` in `late` initializer:
  late double? z = this.x;

// OK, `this.fieldName` is a parameter declaration, not an expression:
// InstanceSample2(this.x, this.y);
}

// -----------------------------------------------------------------------------

// instance variable sample 3
class InstanceSample3 {
  final String name;
  final String address;
  final DateTime start = DateTime.now();

  InstanceSample3(this.name, this.address);

  // constructor with initializing formal parameters
  InstanceSample3.unnamed2(this.name, this.address);

  InstanceSample3.unnamed()
      : name = 'Areeb',
        address = 'Mumbai';
}

// -----------------------------------------------------------------------------

// implicit interface sample

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  @override
  String get _name => '';

  @override
  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');

// -----------------------------------------------------------------------------

// static variable and method
class Queue {
  static const initialCapacity = 16;

  static double distanceBetween() {
    return 10.0;
  }
}

// -----------------------------------------------------------------------------

// super keyword sample
class Vector2d {
  double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  Vector3d(super.x, super.y, this.z);
}

// -----------------------------------------------------------------------------

// Redirecting constructors sample
class Redirecting {
  double x, y;

  // The main constructor for this class.
  Redirecting(this.x, this.y);

  // Delegates to the main constructor.
  Redirecting.alongXAxis(double x) : this(x, 0);
}

// -----------------------------------------------------------------------------

// factory constructor sample 1
class Logger {
  final String name;
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  Logger._internal(this.name);

  void log(String message) {
    print('[$name]: $message');
  }
}

// factory constructor sample 2

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw ArgumentError('Invalid type: $type');
  }

  double get area;
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => radius * radius * 3.14;
}

class Square implements Shape {
  final double side;

  Square(this.side);

  @override
  double get area => side * side;
}

// -----------------------------------------------------------------------------

// operator sample
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);

  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hash(x, y);
}

// -----------------------------------------------------------------------------

// Getter and Setter sample
class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right => left + width;

  set right(double value) => left = value - width;

  double get bottom => top + height;

  set bottom(double value) => top = value - height;
}

// -----------------------------------------------------------------------------

abstract class Doer {
  // Define instance variables and methods...

  void doSomething(); // Define an abstract method.

  void test() {}
}

class EffectiveDoer extends Doer {
  @override
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
    test();
  }
}
