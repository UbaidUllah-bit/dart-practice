import 'BankAccount.dart';
//import 'Complex.dart';
import 'Restaurant.dart';
import 'Temperature.dart';
import 'Strings.dart';
import 'Order.dart';
import 'Product.dart';
import 'Player.dart';
import 'Match.dart';

void main() {
  //Dart classes can have
  //default constructors
  //named constructors
  //factory constructors

  // final zero = Complex.zero();
  // final identity = Complex.identity();
  // final real = Complex.real(5);
  // final imaginary = Complex.imaginary(8);

  // final temp1 = Temperature.celsius(32);
  // final temp2 = Temperature.fahrenheit(89);
  // print(temp1.fahrenheit);
  // temp1.fahrenheit = 90;

  // final Restaurant1 = Restaurant(
  //   name: 'AL Papacho',
  //   cuisine: 'Mexican',
  //   ratings: [],
  // );
  // print(Restaurant1.totalRatings);
  // print(Restaurant1.avgRatings);

  // print(Strings.welcome);
  // print(Strings.greet('Noor'));
  // final bankAccount2 = BankAccount(accountHolder: 'liga', balance: 50.0);
  // bankAccount2.deposit(100);
  // print(bankAccount2.balance);

  // final recentOrders = [
  //   // Valid: > $100 and has a discount code
  //   Order(
  //     customerId: 'user_111',
  //     products: [Product(name: 'Mechanical Keyboard', price: 150.0)],
  //     discountCode: 'SUMMER20',
  //   ),

  //   // Invalid: Total is <= $100
  //   Order(
  //     customerId: 'user_222',
  //     products: [Product(name: 'Wireless Mouse', price: 45.0)],
  //     discountCode: 'WELCOME',
  //   ),

  //   // Invalid: discountCode is null
  //   Order(
  //     customerId: 'user_333',
  //     products: [
  //       Product(name: '4K Monitor', price: 300.0),
  //       Product(name: 'HDMI Cable', price: 20.0),
  //     ],
  //     discountCode: null,
  //   ),

  //   // Valid: > $100 and has discount code (Duplicate ID to test your Set!)
  //   Order(
  //     customerId: 'user_111',
  //     products: [Product(name: 'Gaming Headset', price: 120.0)],
  //     discountCode: 'LOYALTY5',
  //   ),

  //   // Valid: > $100 and has a discount code
  //   Order(
  //     customerId: 'user_444',
  //     products: [Product(name: 'Ergonomic Chair', price: 250.0)],
  //     discountCode: 'FREESHIP',
  //   ),
  // ];

  // final Iterable orders = recentOrders
  //     .where((order) => order.orderTotal > 100.0)
  //     .where((order) => order.discountCode != null)
  //     .map((order) => order.customerId)
  //     .toSet();

  // print(orders);
  final leaderboard = [
    // Valid: > 300 points, has sponsor
    Player(
      username: 'Faker_Fan',
      matches: [
        Match(mapName: 'Dust2', points: 200),
        Match(mapName: 'Mirage', points: 150),
      ],
      sponsor: 'Razer',
    ),

    // Invalid: <= 300 points
    Player(
      username: 'NoobMaster69',
      matches: [Match(mapName: 'Inferno', points: 50)],
      sponsor: 'Logitech',
    ),

    // Invalid: sponsor is null
    Player(
      username: 'LoneWolf',
      matches: [
        Match(mapName: 'Nuke', points: 400),
        Match(mapName: 'Overpass', points: 100),
      ],
      sponsor: null,
    ),

    // Valid: > 300 points, has sponsor (Duplicate sponsor to test Set!)
    Player(
      username: 'HeadshotKing',
      matches: [
        Match(mapName: 'Dust2', points: 300),
        Match(mapName: 'Vertigo', points: 50),
      ],
      sponsor: 'Razer',
    ),

    // Valid: > 300 points, has sponsor
    Player(
      username: 'SneakyBeaky',
      matches: [Match(mapName: 'Mirage', points: 500)],
      sponsor: 'Corsair',
    ),
  ];

  final result = leaderboard
      .where((players) => players.totalPoints > 300)
      .where((player) => player.sponsor != null)
      .map((player) => player.sponsor)
      .toSet();
  print(result);
}
