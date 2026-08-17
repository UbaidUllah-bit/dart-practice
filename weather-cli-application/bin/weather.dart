class Weather {
  const Weather({
    required this.weatherState,
    required this.minTemp,
    required this.maxTemp,
    required this.temp,
  });
  final String weatherState;
  final double minTemp;
  final double maxTemp;
  final double temp;
  factory Weather.fromJson(Map<String, Object?> json) {
    final currentWeather = json['current_weather'] as Map<String, Object?>;
    final daily = json['daily'] as Map<String, Object?>;
    final maxTempList = daily['temperature_2m_max'] as List;
    final minTempList = daily['temperature_2m_min'] as List;

    return Weather(
      weatherState: 'Code ${currentWeather['weathercode']}',
      minTemp: minTempList[0] as double,
      maxTemp: maxTempList[0] as double,
      temp: currentWeather['temperature'] as double,
    );
  }
  @override
  String toString() =>
      ''' 
  Current Temp: ${temp.toStringAsFixed(0)}°C
  Condition: $weatherState
  Daily Min: ${minTemp.toStringAsFixed(0)}°C
  Daily Max: ${maxTemp.toStringAsFixed(0)}°C
  ''';
}
