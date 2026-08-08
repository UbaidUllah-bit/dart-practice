enum PlotType {
  // 1. Define the exact instances and pass in their specific data
  res5Marla(price: 4000000),
  res10Marla(price: 7500000),
  commShop(price: 3000000),
  parking(
    price: 200000,
  ); // Notice the semicolon here! It separates instances from the class logic.

  // 2. Define the immutable variables (the "microchip" data)
  final double price;

  // 3. Create a constant constructor using named parameters
  const PlotType({required this.price});

  // 4. You can even add methods!
  void displayInfo() {
    print('This plot costs $price PKR.');
  }
}

void main() {
  PlotType myPlot = PlotType.res5Marla;

  // Now the price is automatically bundled with the type!
  print(myPlot.price); // Outputs: 4000000.0
  myPlot.displayInfo(); // Outputs: This plot costs 4000000.0 PKR.

  myPlot = PlotType.res10Marla;
  print(myPlot.price);
  myPlot.displayInfo();

  myPlot = PlotType.parking;
  print(myPlot.price);
  myPlot.displayInfo();
}
