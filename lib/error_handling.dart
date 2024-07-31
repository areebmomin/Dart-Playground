void main() {
  /// Error handling

  // Throw

  // sample
  void distanceTo(int other) {
    throw UnimplementedError();
  }

  // -----------------------------------------------------------------------------

  // try catch
  // Use 'on' when you need to specify the exception type.
  // Use 'catch' when your exception handler needs the exception object.

  // sample
  try {
    print('Success');
  } on OutOfLlamasException {
    print('Failed');
  }

  // sample 2
  try {
    print('Success');
  } on OutOfLlamasException {
    // A specific exception
    print('Failed');
  } on Exception catch (e) {
    // Anything else that is an exception
    print('Unknown exception: $e');
  } catch (e) {
    // No specified type, handles all
    print('Something really unknown: $e');
  }

  // sample 3
  try {
    print('Success');
  } on Exception catch (e) {
    print('Exception details:\n $e');
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
  }

  // -----------------------------------------------------------------------------

  // rethrow

  // sample
  void misbehave() {
    try {
      dynamic foo = true;
      print(foo++); // Runtime error
    } catch (e) {
      print('misbehave() partially handled ${e.runtimeType}.');
      rethrow; // Allow callers to see the exception.
    }
  }

  try {
    misbehave();
  } catch (e) {
    print('main() finished handling ${e.runtimeType}.');
  }

  // -----------------------------------------------------------------------------

  // Finally

  // sample
  try {
    print('Success');
  } catch (e) {
    print('Error: $e'); // Handle the exception first.
  } finally {
    print('Handled'); // Then clean up.
  }
}

class OutOfLlamasException implements Exception {}
