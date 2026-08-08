import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  while (true) {
    print('Rock, Paper, Scissors? (r/p/s) or quit (q)');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = Random().nextInt(3);
      final aiMove = Move.values[random];

      print('You played : $playerMove');
      print('AI player: $aiMove');

      if (playerMove == aiMove) {
        print('It\'s a Draw');
      } else if ((playerMove == Move.rock && aiMove == Move.scissors) ||
          (playerMove == Move.scissors && aiMove == Move.paper) ||
          (playerMove == Move.paper && aiMove == Move.rock)) {
        print('You win!');
      } else {
        print('AI wins');
      }
    } else if (input == 'q') {
      print('Exiting Program...');
      break;
    } else {
      print('Invalid Input!');
    }
  }
}
