import 'dart:io';

void main() {
  /*  final nums = <int>[1, 3, 5, 7, 9];

  var evenNumbers = {2, 4, 6, 8, 10};
  var oddNumbers = {1, 3, 5, 7, 9};

  print(evenNumbers.intersection(oddNumbers));
  print(evenNumbers.union(oddNumbers));
  print(evenNumbers.difference(oddNumbers));

  //sets exercise
  int sum = 0;
  const a = {1, 3};
  const b = {3, 5};

  final c = a.union(b).difference(a.intersection(b));
  print(c);

  for (int num in c) {
    sum += num;
  }
  print(sum);

  //maps :- defines key value pairs
  //Map<Key, Values>

  var person = <String, dynamic>{
    'name': 'Ubaid Ullah',
    'age': 20,
    'height': 1.7,
  };
  var name =
      person['name']
          as String; //'as' is used to access the methods which come with string if you don't write 'as' you can't access the methods which come with the data type
  print(name);

  person['age'] = 19;
  person['hasAnInterest'] = false;
  print(person);

  var weight = person['weight'];
  if (weight == null) {
    print('null XD');
  } else {
    print(weight);
  }
  //iterations in Maps<key, value>
  for (var key in person.keys) {
    print(key);
  }
  for(var key in person.keys) {
    print(person[key]);
  }
  for (var value in person.values) {
    print(value);
  }
  for (var entry in person.entries) {
    print('${entry.key} : ${entry.value}');
  }*/

  //exercise Maps

  const pizzaPrices = <String, double>{
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  const order = {'margherita', 'pepperoni', 'pineapple'};

  var total = 0.0;
  for (var item in order) {
    if (pizzaPrices.containsKey(item)) {
      total += pizzaPrices[item] as double;
    } else {
      print('$item doesn\'t exist.');
    }
  }
  print('Total: $total');

  //nested collections

  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [5.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cuisine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant['ratings'] as List<double>;
    var total = 0.0;
    for (var rating in ratings) {
      total += rating;
    }
    final double avgRating = total / ratings.length;
    restaurant['avgRatings'] = avgRating.toStringAsPrecision(2);
    print(restaurant);
  }

  //collection-if

  const addBlue = false;
  const addRed = true;

  var colors = ['grey', 'brown', if (addBlue) 'blue', if (addRed) 'red'];

  print(colors);

  //collection-for

  const extraColors = ['yellow', 'green'];

  colors = [
    'grey',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    for (var color in extraColors) color,
  ];
  print(colors);

  //spread

  //const rgbColors = ['red', 'green', 'blue'];
  const addRGB = true;
  colors = [
    'grey',
    'brown',
    if (addBlue) 'blue',
    if (addRed) 'red',
    for (var color in extraColors) color,
    if (addRGB) ...['red', 'green', 'blue'],
  ];

  print(colors);
  //if-for-spread are composable

  final ratings = [3.0, 4.5, 5.0];

  final restaurant = {
    'name': 'Pizza Mario',
    'cuisine': 'Italian',
    if (ratings.length > 2) ...{'ratings': ratings, 'isPopular': true},
  };

  print(restaurant);

  //Shopping-List Exercise

  const bananas = 5;
  const apples = 6;
  const grains = {'pasta': '500g', 'rice': '1kg'};
  const addGrains = true;
  final shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    //for(var grain in grains.entries) grains.keys : grains.values,
    if (addGrains) ...grains,
  };
  print(shoppingList);

  //copying collections
  final list = [1, 2, 3];
  final copy1 = list;
  final copy2 = [...list];
  copy1[0] = 0;
  copy2[2] = 4;
  print('List : $list');
  print('copy1 : $copy1');
  print('copy2 : $copy2');

  final newShoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrains) ...grains,
  };

  print(newShoppingList);
}
