void main() {
  //Exercise: Sum of List of numbers
  // final list = <double>[1.1, 2.2, 3.3, 4.4, 5.5, 6];

  // final sumOfList = sum(list);
  // print(sumOfList);

  // final person = describe(name: 'Ali', age: 19);
  // print(person);

  foo(1);

  // const order = ['margherita', 'pepperoni', 'pineapple'];

  // print("Total: ${calculateTotal(order)}");
}

int sum(int x, int y) => x + y;

void printSum(int x, int y) => print(x + y);

// double calculateTotal(List<String> order) {
//   const pizzaPrices = <String, double>{
//     'margherita': 5.5,
//     'pepperoni': 7.5,
//     'vegetarian': 6.5,
//   };

//   var total = 0.0;
//   for (var item in order) {
//     if (pizzaPrices.containsKey(item)) {
//       total += pizzaPrices[item] as double;
//     } else {
//       print('$item doesn\'t exist.');
//     }
//   }

//   return total;
// }
// double sum(List<double> nums) {
//   var total = 0.0;
//   for (var num in nums) {
//     total += num;
//   }
//   return total;
// }

//with null safety
//make arguments nullable (e.g. {String? name})
//make arguments non-nullable
//use a default value (e.g. {String name = 'Andrea'})
//mark them as required (e.g. {required String name})
// String describe({required String name, required int age}) {
//   return "My name is $name. I'm $age years old ";
// }

void foo(int a, {int? b}) {
  print('a: $a, b: $b');
}
