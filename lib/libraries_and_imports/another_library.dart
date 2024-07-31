import 'package:dart_playground/libraries_and_imports/one_another_library.dart' as one_another_library;

void main() {
  one_another_library.Library library = one_another_library.Library();
  one_another_library.Employee employee = one_another_library.Employee('Test');
}

class Library {}
