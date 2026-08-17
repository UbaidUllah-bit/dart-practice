import 'dart:convert';
import 'Weather.dart';

import 'package:http/http.dart' as http;

class Location {
  const Location(this.latitude, this.longitude);
  final double latitude;
  final double longitude;
  @override
  String toString() =>
      '''
  Latitude: $latitude,
  Longitude: $longitude
 ''';
}

class WeatherApiException implements Exception {
  final String message;
  const WeatherApiException(this.message);
  @override
  String toString() => '$message';
}

class WeatherApiClient {
  static const geoUrl = 'https://geocoding-api.open-meteo.com/v1';
  static const baseUrl = 'https://api.open-meteo.com/v1';

  Future<Location> getCoordinates(String city) async {
    final locationUrl = Uri.parse('$geoUrl/search/?name=$city&count=1');
    final locationResponse = await http.get(locationUrl);
    if (locationResponse.statusCode != 200) {
      throw WeatherApiException('Error getting locationID for city: $city');
    }
    final locationJson =
        jsonDecode(locationResponse.body) as Map<String, Object?>;
    if (!locationJson.containsKey('results')) {
      throw WeatherApiException('No location found for $city');
    }
    final results = locationJson['results'] as List;
    final firstResult = results.first as Map<String, Object?>;
    return Location(
      (firstResult['latitude'] as num).toDouble(),
      (firstResult['longitude'] as num).toDouble(),
    );
  }

  Future<Weather> fetchWeather(Location location) async {
    final weatherUrl = Uri.parse(
      '$baseUrl/forecast?latitude=${location.latitude}&longitude=${location.longitude}&current_weather=true&daily=temperature_2m_max,temperature_2m_min&timezone=auto',
    );
    final weatherResponse = await http.get(weatherUrl);
    if (weatherResponse.statusCode != 200) {
      throw WeatherApiException(
        'Error getting weather for location: ${location.latitude}, ${location.longitude}',
      );
    }
    final weatherJson =
        jsonDecode(weatherResponse.body) as Map<String, Object?>;
    return Weather.fromJson(weatherJson);
  }

  Future<Weather> getWeather(String city) async {
    final location = await getCoordinates(city);
    return fetchWeather(location);
  }
}
