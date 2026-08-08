//assertions make it easier to diagnose and fix programming errors in your code
//you can create your own assertions and you can use stack trace to figure out where things went wrong
//note about flutter apps
//assertions are enabled in debug mode
//assertions are disabled in release mode
//assertions are a safety net to catch runtime errors early
//exceptions are triggerred in debug and release mode
class PositiveInt {
  const PositiveInt(this.value)
    : assert(value >= 0, 'Value cannot be negative');
  final int value;
}

void signIn({String email = '', String password = ''}) {
  assert(email.isNotEmpty);
  assert(password.isNotEmpty);
}

void main() {
  // const invalidAge = PositiveInt(-1);
  // print(invalidAge);

  const list = [1, 2, 4];
  print(list[1]);
  signIn();
}
