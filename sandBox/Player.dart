class Player {
  const Player({this.username = 'No name', this.level = 0});

  final String username;
  final int level;

  void showStats() => print('Username: $username , Level: $level');
}

class Mage extends Player {
  const Mage({super.username, super.level});

  void castSpell() {
    print('$username casts fireball');
  }
}

void main() {
  Mage m1 = Mage(username: 'Aristorate', level: 80);
  m1.castSpell();
  Player p1 = Mage(username: 'Snape', level: 79);

  if (p1 is Mage) {
    p1.castSpell();
  }
}
