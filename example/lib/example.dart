// These aren't necessary for standard operation of the API;
// they are only required for the API key import and some of the example code
import 'dart:convert';
import 'dart:io';
import 'dart:math';

// Required imports
import 'package:wordnik/wordnik.dart';

void main() async {
  // This isn't required, but you'll need to provide the API key in some way
  Map<String, dynamic> credentials = json.decode(await File('credentials.json').readAsString());

  Wordnik wordnik = Wordnik(credentials['api_key']);

  AuthenticationToken authToken = await wordnik.authenticate(credentials['username'], credentials['password']);
  print('Authenticated and received token "${authToken.token}".\n');

  User user = await wordnik.getLoggedInUser(authToken.token);
  print('Welcome, ${user.displayName}!\n');

  ApiTokenStatus apiStatus = await wordnik.getApiTokenStatus();
  print('You have made ${apiStatus.totalRequests} requests and have ${apiStatus.remainingCalls} remaining.\nCounter will reset in ${apiStatus.resetsIn.inMinutes} minutes.\n');

  WordObject exampleWord = await wordnik.getWord('example');
  print('Got word "${exampleWord.word}".\n');

  List<AudioFile> audioFiles = await wordnik.getAudio(exampleWord.word);
  print('${audioFiles.length} audio results found.\nThe first one is at: "${audioFiles.first.fileUrl}"\n');

  List<Definition> definitions = await wordnik.getDefinitions(exampleWord.word);
  print('${definitions.length} definitions found.\nThe first one is: "${definitions.first.text}"\n');

  List<String> etymologies = await wordnik.getEtymologies(exampleWord.word);
  print('${etymologies.length} etymologies found.\nThe first one is: "${etymologies.first}"\n');

  ExampleSearchResults examples = await wordnik.getExamples(exampleWord.word);
  print('${examples.examples.length} examples found.\nThe first one is: "${examples.examples.first.text}"\n');

  FrequencySummary frequencySummary = await wordnik.getWordFrequency(exampleWord.word);
  Frequency frequency = frequencySummary.frequency[Random().nextInt(frequencySummary.frequency.length)];
  print('${frequency.count} occurances from the year ${frequency.year}\n');

  /*WordObject randomWord = await wordnik.getRandomWord(
    minLength: 7,
    maxLength: 9,
    includePartOfSpeech: 'noun'
  );
  print('Got random word "${randomWord.word}"');

  WordList newWordList = WordList('Example List', 'PRIVATE', description: 'Created by the Wordnik API for Dart.');
  WordList createdWordList = await wordnik.createWordList(authToken.token, newWordList);
  print('New word list "${createdWordList.name}" created with permalink "${createdWordList.permalink}"');

  List<WordObject> randomWords = await wordnik.getRandomWords(
    includePartOfSpeech: 'noun',
    minLength: 6,
    maxLength: 10,
    limit: 5
  );*/



  // TODO: complete example
}
