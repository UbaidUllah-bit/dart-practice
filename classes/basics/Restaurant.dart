class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });
  final String name;
  final String cuisine;
  final List<double> ratings;

  double get totalRatings {
    if (ratings.isEmpty) {
      return 0;
    } else {
      return ratings.reduce(((value, element) => value + element));
    }
  }

  double get avgRatings {
    if (totalRatings == 0) {
      return 0;
    } else {
      return totalRatings / ratings.length;
    }
  }
}
