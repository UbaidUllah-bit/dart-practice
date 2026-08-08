import 'Match.dart';

class Player {
  Player({required this.username, required this.matches, this.sponsor});
  final String username;
  final List<Match> matches;
  String? sponsor;
  int get totalPoints => matches
      .map((match) => match.points)
      .reduce((value, element) => value + element);
}
