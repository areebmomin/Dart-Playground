void main() {

  /// Functions

  // Sample
  List<String?> nobleGases = ['Helium', 'Neon', null];
  bool isNoble(int atomicNumber) {
    return nobleGases[atomicNumber] != null;
  }

  // we can omit the return type [Not recommended for public APIs]
  isNobleGas(atomicNumber) {
    return nobleGases[atomicNumber] != null;
  }

  // Single line function [Arrow '=>' syntax]
  bool isNobleSingle(int atomicNumber) => nobleGases[atomicNumber] != null;

  // return null if return type not specified
  foo() {}

  // Best Practice
  void foo2() {}


  // -----------------------------------------------------------------------------


  // Parameters
  // Types: 'Required Positional', 'Optional Positional' and 'Named'

  // Required Positional
  // Parameter position is important, no default value
  void setInt(int a, int b) {}
  setInt(1, 2);

  // void setInt2(int a = 3, int b) {} // Error

  // Optional positional [Parameter position is important]
  // wrap with '[]'. Must be nullable or have default value
  String say(String from, String msg, [String? device]) {
    return 'How are you?';
  }
  say('Bob', 'Howdy');
  say('Bob', 'Howdy', 'smoke signal');

  String say2(String from, String msg, [String device = 'carrier pigeon']) {
    return 'Hey';
  }
  say2('Bob', 'Howdy');
  say2('Bob', 'Howdy', 'smoke signal');

  // Named Parameters [Parameter position is not important]
  // wrap with '{}'. optional unless explicitly marked as required
  void enableFlags({bool? bold, bool? hidden}) {}
  enableFlags(hidden: false, bold: true);

  // default value
  void enableFlags2({bool bold = false, bool hidden = false}) {}
  enableFlags2(bold: true);

  // required type
  void enableFlags3({required bool bold, required bool? hidden}) {}
  enableFlags3(bold: true, hidden: null);


 // -----------------------------------------------------------------------------


  // main function
  // Entry point of app.

  // sample
  //
  // void main() {
  //   print('Hello, World!');
  // }

  // sample with List<String> argument (Command to run with argument: 'dart run args.dart 1 test')
  //
  // void main(List<String> arguments) {
  //   print(arguments);
  //
  //   assert(arguments.length == 2);
  //   assert(int.parse(arguments[0]) == 1);
  //   assert(arguments[1] == 'test');
  // }


  // -----------------------------------------------------------------------------


  // Functions as first-class objects
  // pass a function as a parameter to another function

  // Assigning functions to variables
  void sayHello() {
    print("Hello!");
  }
  void Function() greeting = sayHello;
  greeting(); // prints "Hello!"

  // Passing functions as arguments to other functions
  void say3(String message) {
    print(message);
  }
  void executeFunction(void Function(String) function, String message) {
    function(message);
  }
  executeFunction(say3, "Hello!"); // prints "Hello!"

  // Returning functions from other functions
  void Function() greet() {
    void sayHello() {
      print("Hello!");
    }
    return sayHello;
  }
  void Function() greetings = greet();
  greetings(); // prints "Hello!"

  // Storing functions in data structures
  void sayHello2() {
    print("Hello!");
  }
  void sayGoodbye() {
    print("Goodbye!");
  }
  List<void Function()> greetings2 = [sayHello2, sayGoodbye];
  for (var greeting in greetings2) {
    greeting();
  }


  // -----------------------------------------------------------------------------


  // Anonymous functions

  // Using an anonymous function to print each fruit
  List<String> fruits = ['apple', 'banana', 'orange'];
  fruits.forEach((fruit) {
    print(fruit);
  });

  // using short-hand
  fruits.map((item) => item.toUpperCase());

}
