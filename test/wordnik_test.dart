import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:wordnik/wordnik.dart';

void main() {
  Map<String, dynamic> credentials;
  setUp(() async {
    credentials = json.decode(await File('credentials.json').readAsString());
  });

  test('checks initialization of wordnik api', () {
    final Wordnik wordnik = Wordnik(credentials['api_key']);
    expect(wordnik.apiKey, credentials['api_key']);
  });
}
