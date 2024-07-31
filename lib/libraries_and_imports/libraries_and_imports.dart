import 'dart:math';
import 'package:dart_playground/libraries_and_imports/another_library.dart';
import 'package:dart_playground/libraries_and_imports/one_another_library.dart'
    as one_another_library;

part 'extended_part_1.dart';

part 'extended_part_2.dart';

void main() {
  /// Every Dart file (plus its parts) is a library, even if it doesn't use a library directive.

  // From another part
  createLibrary();

  Library anotherLibrary = Library();
  one_another_library.Library oneAnotherLibrary = one_another_library.Library();
  one_another_library.Employee employee = one_another_library.Employee('Test');

}
