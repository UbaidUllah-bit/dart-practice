import 'dart:io';
import 'weather-api-client.dart';

Future<void> main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
    return;
  }
  final city = arguments.first;
  print('''$city''');
  try {
    final api = WeatherApiClient();
    final weather = await api.getWeather(city);
    print(weather);
  } on WeatherApiException catch (e) {
    print(e);
  } on SocketException catch (_) {
    print('Could not fetch data, Check your connection');
  } catch (e) {
    print(e);
  }
}
