import 'package:equatable/equatable.dart';

class Credentials extends Equatable {
  const Credentials({this.email, this.password});
  final email;
  final password;

  Credentials copyWith({String? email, String? password}) {
    return Credentials(
        email: email ?? this.email, password: password ?? this.password);
  }

  @override
  List<Object?> get props => [email, password];

  @override
  bool? get stringify => true;
}

void main() {
  const credentials = Credentials();
  final updated1 = credentials.copyWith(email: 'abc@gmail.com');
  print(updated1);
  final updated2 = credentials.copyWith(password: 'too- easy');
  print(updated2);
}
