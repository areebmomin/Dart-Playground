void main() {
  /// Generics

  // Generic in collections
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };

  var nameSet = Set<String>.from(names);
  var views = Map<int, double>();

  // -----------------------------------------------------------------------------

  // Dart generic types are reified unlike Java that is erasure
  var reifiedNames = <String>[];
  reifiedNames.addAll(['Seth', 'Kathy', 'Lars']);
  print(reifiedNames is List<String>); // true

  // -----------------------------------------------------------------------------

  // restricting the Generic type

  // type must be non-nullable
  var nonNullableType = NonNullableFoo<SomeBaseClass>();
  var defaultNonNullableType = NonNullableFoo();
  // var nullableType = NonNullableFoo<SomeBaseClass?>(); // [Error]

  // type must be of type SomeBaseClass
  var foo = Foo<SomeBaseClass>();
  var childFoo = Foo<SomeChildClass>();
  var defaultFoo = Foo();
  // var anotherFoo = Foo<AnotherClass>(); // [Error]

// -----------------------------------------------------------------------------

  // Generic method example
  var dynamicResult = first([123]);
  print(dynamicResult);

  var stringResult = first(<String>['First']);
  print(stringResult);

  var stringResult2 = first<String>(<String>['Second']);
  print(stringResult2);
}

// example
// cache for Object type
abstract class ObjectCache {
  Object getByKey(String key);

  void setByKey(String key, Object value);
}

// cache for String type
abstract class StringCache {
  String getByKey(String key);

  void setByKey(String key, String value);
}

// Generic cache
abstract class Cache<T> {
  T getByKey(String key);

  void setByKey(String key, T value);
}

// -----------------------------------------------------------------------------

// Parameterized Generic type

class NonNullableFoo<T extends Object> {
  // Any type provided to NonNullableFoo for T must be non-nullable.
}

class SomeBaseClass {}

class SomeChildClass extends SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  // Any type provided to Foo for T must be of type SomeBaseClass.
}

class AnotherClass {}

// -----------------------------------------------------------------------------

// Generic method example
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}