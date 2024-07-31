void main() {
  /// Branches

  // If

  // sample
  if (isRaining()) {
    print('Bring rain coat');
  } else if (isSnowing()) {
    print('Wear jacket');
  } else {
    print('Enjoy');
  }

  // -----------------------------------------------------------------------------

  // Switch

  // sample
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
    case 'PENDING':
      print('PENDING');
    default: // wildcard(_) can be used here
      print('UNKNOWN');
  }

  // -----------------------------------------------------------------------------

  // Exhaustiveness checking

  // sample
  bool? nullableBool;
  // switch (nullableBool) {
  //   case true:
  //     print('yes');
  //   case false:
  //     print('no');
  // }

  double calculateArea(Shape shape) => switch (shape) {
        Square(length: var l) => l * l,
        Circle(radius: var r) => 3.14 * r * r
      };
}

// If sample
bool isRaining() {
  return false;
}

bool isSnowing() {
  return false;
}

// Exhaustiveness checking
sealed class Shape {}

class Square implements Shape {
  final double length;

  Square(this.length);
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);
}
