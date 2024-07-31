void main() {
  /// Numbers (int, double, [no float])
  // int
  var x = 1;
  int y = 0;

  x.ceil();
  y.floor();

  // String -> int
  var one = int.parse('1');
  print(one);

  // double
  var z = 1.1;
  double a = 4.3;

  z.isNegative;

  // String -> double
  var onePointOne = double.parse('1.1');
  print(onePointOne);

  // num (super type of int and double) (can be both int and double)
  num number = 1;
  number = 3.8;

  // -----------------------------------------------------------------------------

  /// Strings

  var s1 = 'Single quotes work well for string literals.'; // recommended
  var s2 = "Double quotes work just as well.";

  var variableInterpolation = 'Add variable $s1';
  print(variableInterpolation);

  var expressionInterpolation = 'Add expression ${1 + 2}';
  print(expressionInterpolation);

  // concatenate adjacent strings
  var adjacentString = 'String '
      'concatenation'
      " works even over line breaks.";
  print(adjacentString);

  // concatenate with + operator
  var plusConcatenation = 'The + operator ' + 'works, as well.';
  print(plusConcatenation);

  // multi-line strings
  var singleQuoteMultiLine = '''
You can create
multi-line strings like this one.''';
  print(singleQuoteMultiLine);

  var doubleQuoteMultiLine = """This is also a
multi-line string.""";
  print(doubleQuoteMultiLine);

  var hi = 'Hi 🇩🇰';
  print(hi);
  var hi2 = 'Hi \u{1f606}';
  print(hi2);

  // -----------------------------------------------------------------------------

  /// Booleans
  var boolVar = false;
  bool boolean = true;
  bool? nullableBoolean;
}
