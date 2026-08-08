//Exceptions
//use cases: Network requests, file I/O, etc
//used when something can fail unexpectedly
//when an exception happens we should be able to recover it
//workflow for exceptions
//throw the exception
//try the exception
//catch the exception you can use on to define multiple types of exceptions
//then finally at the end to do some functionality
//you can use rethrow to propagate an exception to the top by using it in the catch block
//in this way the exception appears at the end after execution
class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw UnsupportedError('Division by zERO');
    }
  }

  final int numerator;
  final int denominator;

  double get value => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fraction(3, 0);
    print(f.value);
  } on UnsupportedError catch (e) {
    print(e);
    rethrow;
    //handle the exception inside a catch block
    //propagate the exception higher up in the call stack, like showing the important exception
  } on Exception catch (e) {
    print(e);
  } finally {
    print('test fraction done');
  }
}

void main() {
  testFraction();
  print('done');
}
