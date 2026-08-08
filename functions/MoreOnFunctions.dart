const global = 15;
void main() {
  //scope is a block of code which is defined within curly braces
  //local scopes
  print(global);
  const a = 10;
  print(a);

  void foo(int b) {
    print(global);
    print(b);
    print(a);
    void bar(int c) {
      print(global);
      print(a);
      print(b);
      print(c);
    }
  }

  foo(5);
}
