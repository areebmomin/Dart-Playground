late String description;

void main() {
  /// Introduction
  // creating and initializing variable (auto-inferring)
  var name = 'Areeb';

  // explicitly declare variable type
  String favoriteFruit = 'Apple';

  // intro to dynamic (Type independent)
  dynamic favoriteActor = 'Cillian Murphy';
  favoriteActor = 4;
  favoriteActor = [true, false, false];
  favoriteActor = null;

  // separating declaration and initialization
  // var case (dynamic by-default)
  var currentYear;
  currentYear = false;

  // explicit data type case
  String politicalParty;
  // politicalParty = 28; // [Error]
  politicalParty = 'BJP';


  // -----------------------------------------------------------------------------


  /// Null safety
  // nullable type (default null)
  double? temperature;
  // temperature = 25.8;

  print('temperature: $temperature');

  // non-nullable type
  int fahrenheit;
  fahrenheit = 12; // [must be initialized before use]

  print('fahrenheit: $fahrenheit');


  // -----------------------------------------------------------------------------


  /// Late variables
  // Dart is unable to detect top level and instance variable initialization
  // late is promise you make to dart that variable will be initialized before use
  // late also lazily initializes the variable

  // description = 'late example';

  print('description: $description');


  // -----------------------------------------------------------------------------


  /// Final and Const variables
  // final variables
  // cannot be changed and can only set one time

  // direct initialization
  final company = 'Zerodha';
  final bool isFriday = false;
  // company = 'Upstox'; // [Error]

  // late initialization
  final String stockName;
  stockName = 'ADANIENT';
  // stockName = 'ALOKINDS'; [Error]
  print(stockName);

  // late initialization (dynamic case)
  final dartReleaseYear;
  dartReleaseYear = 2011;
  //dartReleaseYear = '2011';

  // const variables (final implicitly)
  // must be initialized at declaration
  const pie = 3.14159265359;
  const int zero = 0;

  // [Error]
  // const String lateInitialization;
  // lateInitialization = "Done";
}