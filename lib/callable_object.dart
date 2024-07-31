void main() {
  /// Callable objects
  // To allow an instance of your class to be called like a function, implement the call() method.
  // just like 'invoke' operator in Kotlin

  // sample
  var wf = WannabeFunction();
  var out = wf('Hi', 'there,', 'gang');
  print(out);
}

class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}
