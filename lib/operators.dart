void main() {
  /// Operator precedence
  // refer doc

  // -----------------------------------------------------------------------------

  /// Arithmetic operators
  print('2 + 3 = ${2 + 3}');
  print('2 - 3 = ${2 - 3}');
  print('2 * 3 = ${2 * 3}');
  print('5 / 2 = ${5 / 2}'); // Result is a double
  print('5 ~/ 2 = ${5 ~/ 2}'); // Result is an int
  print('5 % 2 = ${5 % 2}'); // Remainder

  // Unary minus (reverse the sign of the expression)
  int unaryMinus = 2;
  unaryMinus = -unaryMinus;
  print('UnaryMinus: $unaryMinus');
  unaryMinus = -unaryMinus;
  print('UnaryMinus: $unaryMinus');

  // increment and decrement example
  int a;
  int b;

  a = 0;
  b = ++a; // Increment a before b gets its value.
  print(a == b); // 1 == 1

  a = 0;
  b = a++; // Increment a after b gets its value.
  print(a != b); // 1 != 0

  a = 0;
  b = --a; // Decrement a before b gets its value.
  print(a == b); // -1 == -1

  a = 0;
  b = a--; // Decrement a after b gets its value.
  print(a != b); // -1 != 0

  // -----------------------------------------------------------------------------

  /// Equality and relational operators

  print('2 == 2 = ${2 == 2}');
  print('2 != 3 = ${2 != 3}');
  print('3 > 2 = ${3 > 2}');
  print('2 < 3 = ${2 < 3}');
  print('3 >= 3 = ${3 >= 3}');
  print('2 <= 3 = ${2 <= 3}');

  // -----------------------------------------------------------------------------

  /// Type test operators
  // as operator
  var employee = Person('Rohit', 22);
  (employee as Employee).firstName = 'Bob';

  // is operator
  if (employee is Employee) {
    // Type check
    employee.firstName = 'Bob';
  }

  // is! operator
  if (employee is! Employee) {
    // Type check
    employee.firstName = 'Bob';
  }
  print(employee);

  // -----------------------------------------------------------------------------

  /// Assignment operators
  int x = 5;

  x += 3;
  print(x);

  x -= 3;
  print(x);

  x *= 3;
  print(x);

  double y = 10.0;
  y /= 2;
  print(y);

  x ~/= 3;
  print(x);

  x %= 3;
  print(x);

  // Assign value only in-case 'nullableString' is 'null'
  String? nullableString;
  // nullableString = 'String';
  nullableString ??= 'String from null check assignment operator';
  print(nullableString);

  // -----------------------------------------------------------------------------

  /// Logical operators

  bool firstBool = true;
  bool secondBool = false;

  print(firstBool && secondBool);

  print(firstBool || secondBool);

  print(!firstBool);

  // -----------------------------------------------------------------------------

  /// Bitwise and shift operators
  int firstBitNumber = 5; // Binary representation: 0101
  int secondBitNumber = 3; // Binary representation: 0011

  print(firstBitNumber & secondBitNumber);
  // Output: 1 (Binary representation: 0001)

  print(firstBitNumber | secondBitNumber);
  // Output: 7 (Binary representation: 0111)

  print(firstBitNumber ^ secondBitNumber);
  // Output: 6 (Binary representation: 0110)

  print(~firstBitNumber);
  // Output: -6 (Binary representation: 1010, considering two's complement)

  print(firstBitNumber << 2);
  // Output: 20 (Binary representation after left shift: 0001 0100)

  print(firstBitNumber >> 2);
  // Output: 1 (Binary representation after right shift: 0000 0001)

  // -----------------------------------------------------------------------------

  /// Conditional expressions
  // ternary operator
  bool isRaining = true;
  String weather = isRaining ? "Grab an umbrella" : "Enjoy the sunshine";
  print(weather);

  // null aware operator (Elvis or null-coalescing operator in Kotlin or Swift)
  String? desiredCity;
  String defaultCity = "Guest";
  String city = desiredCity ?? defaultCity;
  print(city);

  // -----------------------------------------------------------------------------

  /// Cascade notation
  Person? person = Person('Bob', 28);
  // person = null;
  person
    ..setDetails("Alice", 30)
    ..introduceYourself();

  // -----------------------------------------------------------------------------

  /// Others
  List<String>? fruits;
  // fruits = ['Apple', 'Banana', 'Orange'];
  print(fruits?[1]);

  Employee? newEmployee;
  //newEmployee = Employee('Rahul');
  print(newEmployee?.firstName);
  //print(newEmployee!.firstName);
}

class Person {
  String firstName;
  int age;

  Person(this.firstName, this.age);

  void setDetails(String firstName, int age) {
    this.firstName = firstName;
    this.age = age;
  }

  void introduceYourself() {
    print("Hello, my name is $firstName and I am $age years old.");
  }

  @override
  String toString() {
    return 'Person{firstName: $firstName, age: $age}';
  }
}

class Employee {
  String firstName;

  Employee(this.firstName);
}
