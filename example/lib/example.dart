// These are only required for the API key import; they aren't necessary for the API
import 'dart:convert';
import 'dart:io';

import 'package:wordnik/wordnik.dart';

void main() async {
  // This isn't required, but you'll need to provide the API key in some way
  Map<String, dynamic> credentials = json.decode(await File('credentials.json').readAsString());

  Wordnik wordnik = Wordnik(credentials['api_key']);

  WordObject randomWord = await wordnik.getRandomWord();
  print(randomWord.word);

  // TODO: complete example
}
