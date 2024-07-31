void main() {
  /// Loops

  // For loop

  // sample
  for (var i = 0; i < 5; i++) {
    print('Index: $i');
  }


  // -----------------------------------------------------------------------------


  // For in loop

  // sample
  var values = [1, 5, 10, 20];
  for (final value in values) {
    print(value);
  }

  // For each loop [for Iterable]
  var collection = [1, 2, 3];
  collection.forEach((num) {
    print(num);
  }); // 1 2 3


  // -----------------------------------------------------------------------------


  // While and do-while loop

  // while sample
  // while (true) {
  //   print('Iterating');
  // }

  // do-while sample
  // do {
  //   print('Iterating');
  // } while (true);


  // -----------------------------------------------------------------------------


  // Break and continue

  // break sample
  while (true) {
    if (true) break;
    print('Done');
  }

  // continue sample
  int count = 0;
  while (count < 10) {
    if (count % 2 != 0) {
      // Skip odd numbers
      count++;
      continue;
    }
    print("Even number: $count");
    count++;
  }
}
