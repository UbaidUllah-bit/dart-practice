class BankAccount {
  BankAccount({this.accountHolder = 'Default', this._balance = 0.0});

  final accountHolder;
  double _balance;

  double get balance => _balance;
  void deposit(double amount) {
    _balance += amount;
  }

  bool withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'Name : $accountHolder , Balance: \$$_balance';
  }
}
