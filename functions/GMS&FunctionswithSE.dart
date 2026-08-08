var counter = 1; //mutable global state (can be easily modified)
//never ever declare global mutable states like this
//better if they are named global constants like const bitsInByte = 8;
void foo() {
  print('*' * counter);
  counter++;
}

//the above function violates purity
//a pure function does the following things
//it always produces the same result when called with same arguments
//doesn't mutate any variables outside its own scope
void main() {
  foo();
  foo();
  foo();
}
