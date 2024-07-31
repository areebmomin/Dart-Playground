void main() {

  /// Extensions methods
  // Extension methods add functionality to existing libraries
  // can extend methods, getter, setters, and operators

  // sample 1
  print('42'.parseInt());
  print(NumberParsing('42').parseInt());

  // sample 2
  print('object'.isBlank);

  // sample 3
  List<int> list = [];
  print(list.doubleLength);
}

// sample 1
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
}

// unnamed extensions [Not help in case of API conflicts]
extension on String {
  bool get isBlank => trim().isEmpty;
}

// generic extensions
extension MyFancyList<T> on List<T> {
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}