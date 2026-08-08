class Complex {
  const Complex(this.real, this.imaginary);
  //in a class where all variables are final
  //use a const constructor (enables performance optimization)
  const Complex.zero() : real = 0, imaginary = 0;
  const Complex.identity() : real = 1, imaginary = 0;
  const Complex.real(this.real) : imaginary = 0;
  const Complex.imaginary(this.imaginary) : real = 0;
  final double real;
  final double imaginary;
}
