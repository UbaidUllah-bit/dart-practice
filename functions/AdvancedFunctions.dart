//function types (aliases)
typedef Greet = String Function(String);
//typedef String Greet(String name);

String sayHi(String name) => 'Hi $name';
String saySalam(String name) => 'Assalam-u-Alaikum $name';
String sayHalo(String name) => 'Halo $name';
void main() {
  /*anonymous functions and Closures*/
  final sayHi = (String name) => 'Hi, $name';
  //make sure to call the function with parenthesis

  /*functions as arguments / as first class objects*/
  welcome(sayHi, 'Ubaid');
  welcome(saySalam, 'Ubaid');
  welcome(sayHalo, 'Ubaid');

  //functional operators i.e. map, where, reduce
  //Generics
}

void welcome(Greet greet, String name) {
  print(greet(name));
  print("Welcome!!!!");
}
