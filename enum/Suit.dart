enum Suit {
  hearts(symbol: '♥', color: 'red'),
  diamonds(symbol: '♦', color: 'red'),
  clubs(symbol: '♣', color: 'black'),
  spades(symbol: '♠', color: 'black');

  const Suit({required this.symbol, required this.color});

  final String symbol;
  final String color;

  void printDetails() => print('This suit is $symbol and its color is $color');
}

void main() {
  Suit mySuit = Suit.spades;
  mySuit.printDetails();
}
