import 'dart:convert';

import 'launch.dart';
import 'package:http/http.dart' as http;

class SpacexApiException implements Exception {
  final String message;
  const SpacexApiException([this.message = 'Error getting details...']);
  @override
  String toString() => '$message';
}

class SpacexApiClient {
  static const baseUrl =
      'https://gateway.pipeworx.io/spacex/v4/launches/latest';

  Future<Launch> fetchDetails() async {
    final url = Uri.parse('$baseUrl');
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw SpacexApiException();
    }
    final jsonData = jsonDecode(response.body);
    return Launch.fromJson(jsonData);
  }
}
