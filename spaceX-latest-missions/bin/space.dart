import 'dart:io';

import 'spaceX-api-client.dart';

Future<void> main(List<String> arguments) async {
  // if (arguments.length != 1) {
  //   print('Syntax: bin/space.dart latest');
  //   return;
  // }
  try {
    final apiInstance = SpacexApiClient();
    print(await apiInstance.fetchDetails());
  } on SpacexApiException catch (e) {
    print(e);
  } on SocketException catch (_) {
    print('Connection lost, check your internet connection.');
  } catch (e) {
    print(e);
  }
}
