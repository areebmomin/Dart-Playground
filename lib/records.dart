void main() {
  /// Records (Pair/Triple in Kotlin, Tuple in Swift)
  // Records bundle multiple values in a single object
  // Records are real values; you can store them in variables, nest them,
  // pass them to and from functions, and store them in data structures such as lists, maps, and sets.

  // syntax
  var record = ('first', a: 2, b: true, 'last');

  // receive record and return record from function
  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // record as a variable
  (String, int) recordVariable;
  recordVariable = ('A string', 123);

  // record as a variable with named parameters
  ({int a, bool b}) namedRecordVariable;
  namedRecordVariable = (a: 123, b: true);

  // compare records without named parameters
  (int a, int b) recordAB = (1, 2);
  (int x, int y) recordXY = (3, 4);
  recordAB = recordXY; // OK.

  // compare record with named parameters
  ({int a, int b}) recordABNamed = (a: 1, b: 2);
  ({int x, int y}) recordXYNamed = (x: 3, y: 4);
  // Compile error! These records don't have the same type.
  // recordABNamed = recordXYNamed;

  // accessing records parameters
  print(record.$1);
  print(record.a);
  print(record.b);
  print(record.$2);

  // destructuring records with a positional fields
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };

  var (name, age) = userInfo(json);
  print(name);
  print(age);

  // Equivalent to:
  var info = userInfo(json);
  var userName = info.$1;
  var userAge = info.$2;

  // destructuring records with a named fields
  ({String userNameInfo, int userAgeInfo}) userInfoNamed(Map<String, dynamic> json) {
    return (userNameInfo: json['name'] as String, userAgeInfo: json['age'] as int);
  }
  final (:userNameInfo, :userAgeInfo) = userInfoNamed(json);
  print(userNameInfo);
  print(userAgeInfo);
}
