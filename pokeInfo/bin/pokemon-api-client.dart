import 'dart:convert';

import 'pokemon.dart';
import 'package:http/http.dart' as http;

class PokemonApiException implements Exception {
  final String message;
  const PokemonApiException(this.message);
  @override
  String toString() => '$message';
}

class PokemonApiClient {
  static const baseUrl = 'https://pokeapi.co/api/v2/pokemon';

  Future<Pokemon> fetchDetails(String name) async {
    final apiUrl = Uri.parse('$baseUrl/$name');
    final apiResponse = await http.get(apiUrl);
    if (apiResponse.statusCode != 200) {
      throw PokemonApiException('Error getting $name details');
    }
    final pokemonJson = jsonDecode(apiResponse.body) as Map<String, Object?>;
    return Pokemon.fromJson(pokemonJson);
  }
}
