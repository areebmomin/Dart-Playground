void main() {
  // single line comment

  /*
  Multi-line comment
  in Dart
   */

  /// single Documentation comment [pie]

  /**
   * Multi-line Documentation comment
   */

  /// Multi-line Documentation comment
  /// in Dart
}

// ------------------------ Example --------------------------------------------

/// Just like any other animal, llamas need to eat,
/// so don't forget to [feed] them some [Food].
class Llama {
  String? name;

  /// Instance property name: [name]

  /// Feeds your llama [food].
  /// The typical llama eats one bale of hay per week.
  void feed(Food food) {
    // ...
  }

  /// Exercises your llama with an [activity] for
  /// [timeLimit] minutes.
  void exercise(Activity activity, int timeLimit) {
    // ...
  }
}

class Food {}

class Activity {}
