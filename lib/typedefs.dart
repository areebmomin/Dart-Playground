typedef IntList = List<int>;
typedef ListMapper<X> = Map<X, List<X>>;

void main() {
  /// Typedefs (typealias in Kotlin and Swift)
  // concise way to refer to a type

  // example
  IntList il = [1, 2, 3];

  // example with type-parameters
  Map<String, List<String>> m1 = {}; // Verbose.
  ListMapper<String> m2 = {}; // Same thing but shorter and clearer.
}
