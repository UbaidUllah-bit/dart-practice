import 'pokemon-api-client.dart';
import 'dart:io';

Future<void> main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax: bin/poke_info.dart <Pokemon>');
    return;
  }
  try {
    final pokemon = PokemonApiClient();
    print(await pokemon.fetchDetails(arguments.first));
  } on PokemonApiException catch (e) {
    print(e.message);
  } on SocketException catch (_) {
    print('Connection lost, please check your internet connection.');
  } catch (e) {
    print(e);
  }
}
