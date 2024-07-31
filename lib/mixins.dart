void main() {
  /// Mixins
  // Mixins are a way of defining code that can be reused in multiple class hierarchies

  // sample
  var animal = Animal();
  animal.makeSound(); // Output: Animal making sound...
  animal.swim(); // Output: Swimming...

  var duck = Duck();
  duck.fly(); // Output: Flying...
  duck.swim(); // Output: Swimming...
  duck.quack(); // Output: Quack!

  // sample 2
  var singerDancer = SingerDancer();
  singerDancer.test();

  // -----------------------------------------------------------------------------

  // mixin class
  // defines a class that is usable as both a class and a mixin
  // Any restrictions that apply to classes or mixins also apply to mixin classes:
  //
  // 1) Mixins can't have 'extends' or 'with' clauses, so neither can a mixin class.
  // 2) Classes can't have an 'on' clause, so neither can a mixin class.

  // sample
  Virtuoso().playInstrument('Violin');
  Novice().playInstrument('Drums');
}

// -----------------------------------------------------------------------------

// sample
mixin Swimming {
  void swim() {
    print('Swimming...');
  }
}

mixin Flying {
  void fly() {
    print('Flying...');
  }
}

// Class with a Mixin
class Animal with Swimming {
  void makeSound() {
    print('Animal making sound...');
  }
}

// Class with multiple Mixins
class Duck with Swimming, Flying {
  void quack() {
    print('Quack!');
  }
}

// -----------------------------------------------------------------------------

// sample 2
class Musician {
  // ...
}

// Applicable only on classes that extends or implements 'Musician'
mixin MusicalPerformer on Musician {
  void test() {}
}

class SingerDancer extends Musician with MusicalPerformer {
  // ...
}

// [Error]
// class AnotherClass with MusicalPerformer {
//
// }

// -----------------------------------------------------------------------------

// Mixins can't have 'extends' or 'with' clauses

// [Error]
// mixin sample extends Musician {
//
// }

// [Error]
// mixin sample2 with MusicalPerformer {
//
// }

// mixin class sample
abstract mixin class Musician2 {
  // No 'on' clause, but an abstract method that other types must define if
  // they want to use (mix in or extend) Musician:
  void playInstrument(String instrumentName);

  void playPiano() {
    playInstrument('Piano');
  }

  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician2 {
  // Use Musician as a mixin
  @override
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName beautifully');
    playPiano();
  }
}

class Novice extends Musician2 {
  // Use Musician as a class
  @override
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName poorly');
    playFlute();
  }
}
