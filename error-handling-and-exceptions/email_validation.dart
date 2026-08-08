class EmailAddress {
  EmailAddress(this.email) {
    if (email.isEmpty) {
      throw FormatException('email cannot be empty');
    }
    if (!email.contains('@')) {
      throw FormatException('$email doesn\'t contain the @ symbol ');
    }
  }
  final String email;

  @override
  String toString() => email;
}

void main() {
  try {
    try {
      print(EmailAddress('me@example.com'));
      print(EmailAddress('example.com'));
      print(EmailAddress(''));
    } on FormatException catch (e) {
      print(e);
      rethrow;
    }
  } on Exception catch (e) {
    print(e);
  }
  print('and here I am still standing');
}
