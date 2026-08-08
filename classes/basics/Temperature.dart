class Temperature {
  Temperature.celsius(this.celsius);
  Temperature.fahrenheit(double fahrenheit) : celsius = (fahrenheit - 32) / 1.8;
  double celsius;
  double get fahrenheit => celsius * 1.8 + 32;
  set fahrenheit(double fahrenheit) => celsius = (fahrenheit - 32) / 1.8;
}
