class Stack<T> {
  final List<T> _items = []; //composition

  void push(T item) => _items.add(item);
  T pop() => _items.removeLast();

  T seek() => _items.last;
}

void main() {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  //print(stack.seek());
  print(stack.pop());
}
