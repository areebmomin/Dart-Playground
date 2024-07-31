void main() {
  /// Lists (arrays)

  // declare using literal
  var list = [1, 2, 3];
  list.add(5);
  print(list);

  // dynamic list
  var emptyDynamicList = [];
  emptyDynamicList.add(12);
  emptyDynamicList.add('Any string');
  print(emptyDynamicList);

  // empty String type list
  var emptyStringList = <String>[];
  emptyDynamicList.add('Any value');
  // emptyStringList.add(12); // [Error]
  print(emptyStringList);

  // initialize empty list using Constructor
  var objectList = List<String>.empty(growable: true);
  objectList.add("Test");

  // Filled list
  var filledList = List<String>.filled(10, 'fill');
  // filledList.add('value'); [Error]
  print(filledList);

  // constant list
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.
  // constantList = [3, 4, 5, 6]; // works (because constantList not not final or const)

  // add comma at last for indentation
  var vehicles = [
    'Car',
    'Boat',
    'Plane',
  ];

  // -----------------------------------------------------------------------------

  ///  Set

  // initialize using literal
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  // create empty set
  var names = <String>{};
  var dynamicSet = <dynamic>{};
  Set<String> anotherNames = {}; // This works, too.
  //var names = {}; // Creates a map, not a set.

  // create set using constructor
  var constructorDynamicSet = Set();
  var constructorDataTypeSet = Set<String>();

  // add to the list
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  print(elements);

  // constant Set
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.

  // -----------------------------------------------------------------------------

  ///  Map

  // initializing with literal
  var gifts = {'1': 'partridge', '2': 'turtledoves', '5': 'golden rings'};

  // dynamic map
  var dynamicMap = {};
  dynamicMap['String'] = 'String';
  dynamicMap[12] = bool;
  print(dynamicMap);

  // Specify key-value data type using literal
  var literalMap = <String, int>{};
  // literalMap[12] = 'Test'; // Error
  literalMap['Test'] = 12;

  // initialize map with constructor
  var constructorGifts = Map<String, String>();
  constructorGifts['first'] = 'partridge';
  constructorGifts['second'] = 'turtledoves';
  constructorGifts['fifth'] = 'golden rings';
  constructorGifts.addAll(gifts);
  print(constructorGifts);

  // retrieve a value
  print(constructorGifts['first']);
  print(constructorGifts['third']); // null when value not available

  // constant map
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constantMap[2] = 'Helium'; // This line will cause an error.

  // -----------------------------------------------------------------------------

  /// Operators

  // spread operator
  // for non-nullable case
  var firstList = [1, 2, 3];
  var secondList = [0, ...firstList, 8];
  print(secondList);

  // for nullable case
  List<int>? firstNullableList;
  var secondNullableList = [0, ...?firstNullableList];
  print(secondNullableList);

  // control flow operator
  // collection if operator
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // collection for operator
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  print(listOfStrings);
}
