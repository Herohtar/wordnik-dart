// These aren't necessary for standard operation of the API;
// they are only required for the API key import and some of the example code
import 'dart:math';
import 'package:credentials_helper/credentials_helper.dart';

// Required imports
import 'package:wordnik/wordnik.dart';

void main() async {
  Random random = Random();

  // This isn't required, but you'll need to provide the API key in some way
  Credentials credentials = Credentials.fromFile('credentials.json');

  Wordnik wordnik = Wordnik(credentials.apiKey);

  AuthenticationToken authToken = await wordnik.authenticate(credentials.username, credentials.password);
  print('Authenticated and received token "${authToken.token}".\n');

  User user = await wordnik.getLoggedInUser(authToken.token);
  print('Welcome, ${user.displayName}!\n');

  ApiKeyStatus keyStatus = await wordnik.getApiKeyStatus();
  print('You have made ${keyStatus.totalRequests} requests and have ${keyStatus.remainingCalls} remaining.');
  print('Counter will reset in ${keyStatus.resetsIn.inMinutes} minutes.\n');

  WordObject exampleWord = await wordnik.getWord('example');
  print('Got word "${exampleWord.word}".\n');

  List<AudioFile> audioFiles = await wordnik.getAudio(exampleWord.word);
  print('${audioFiles.length} audio results found.');
  print('The first one is: "${audioFiles.first.fileUrl}"\n');

  List<Definition> definitions = await wordnik.getDefinitions(exampleWord.word);
  print('${definitions.length} definitions found.');
  print('The first one is: "${definitions.first.text}"\n');

  List<String> etymologies = await wordnik.getEtymologies(exampleWord.word);
  print('${etymologies.length} etymologies found.');
  print('The first one is: "${etymologies.first}"\n');

  ExampleSearchResults examples = await wordnik.getExamples(exampleWord.word);
  print('${examples.examples.length} examples found.');
  print('The first one is: "${examples.examples.first.text}"\n');

  FrequencySummary frequencySummary = await wordnik.getWordFrequency(exampleWord.word);
  Frequency frequency = frequencySummary.frequency[random.nextInt(frequencySummary.frequency.length)];
  print('${frequency.count} occurances from the year ${frequency.year}\n');

  List<Syllable> syllables = await wordnik.getHyphenation(exampleWord.word);
  print('This word has ${syllables.length} syllables: ${syllables.map((s) => s.text).join('-')}\n');

  List<Bigram> bigrams = await wordnik.getPhrases(
    exampleWord.word,
    limit: 10
  );
  Bigram bigram = bigrams[random.nextInt(bigrams.length)];
  print('You might say "${bigram.gram1} ${bigram.gram2}".\n');

  List<TextPron> textProns = await wordnik.getTextPronunciations(exampleWord.word);
  TextPron textPron = textProns.first;
  print('It is pronounced "${textPron.raw}".\n');

  List<Related> relatedWords = await wordnik.getRelatedWords(
    exampleWord.word,
    relationshipTypes: ['synonym', 'rhyme']
  );
  Related synonyms = relatedWords.firstWhere((word) => word.relationshipType == 'synonym');
  Related rhymes = relatedWords.firstWhere((word) => word.relationshipType == 'rhyme');
  print('${synonyms.words.length} synonyms found, including "${synonyms.words[random.nextInt(synonyms.words.length)]}".\n');
  print('${rhymes.words.length} rhymes found, including "${rhymes.words[random.nextInt(rhymes.words.length)]}".\n');

  Example example = await wordnik.getTopExample(exampleWord.word);
  print('The top example is: "${example.text}" from ${example.title}.\n');

  WordOfTheDay wordOfTheDay = await wordnik.getWordOfTheDay();
  WordOfTheDay previousWordOfTheDay = await wordnik.getWordOfTheDay(date: DateTime.now().subtract(Duration(days: 1)));
  print('The word of the day is "${wordOfTheDay.word}".\n');
  print('Yesterday\'s word of the day was "${previousWordOfTheDay.word}".\n');

  DefinitionSearchResults reverseDictionaryResults = await wordnik.reverseDictionary('eating utensil with prongs');
  Definition reverseDictionary = reverseDictionaryResults.results.first;
  print('A word that means "eating utensil with prongs" might be "${reverseDictionary.word}".\n');

  WordSearchResults searchResults = await wordnik.searchWords(
    '.+?rong.+?',
    isRegex: true,
    skip: 1,
    limit: 1
  );
  WordSearchResult searchResult = searchResults.searchResults.first;
  print('${searchResults.totalResults} words found that contain the sequence "rong", including "${searchResult.word}".\n');

  WordObject randomNoun = await wordnik.getRandomWord(
    partsOfSpeech: PartOfSpeechOptions(noun: true, nounPlural: false, nounPosessive: false, properNoun: false, properNounPlural: false, properNounPosessive: false, givenName: false, familyName: false),
    minLength: 5,
    maxLength: 7
  );
  print('Got random noun "${randomNoun.word}".\n');

  List<WordObject> randomAdjectives = await wordnik.getRandomWords(
    partsOfSpeech: PartOfSpeechOptions(adjective: true),
    minLength: 5,
    maxLength: 7,
    limit: 3
  );
  print('Got random adjectives: ${randomAdjectives.map((adjective) => adjective.word).join(', ')}\n');

  WordList newWordList = WordList(
    'Temporary Example List',
    'PRIVATE',
    description: 'Created by the Wordnik API for Dart.'
  );
  WordList createdWordList = await wordnik.createWordList(
    authToken.token,
    newWordList
  );
  print('New word list "${createdWordList.name}" created with permalink "${createdWordList.permalink}".\n');

  List<String> wordsToAdd = List<String>()
    ..add(exampleWord.word)
    ..add(randomNoun.word)
    ..addAll(randomAdjectives.map((word) => word.word));
  await wordnik.addWordsToWordList(
    authToken.token,
    createdWordList.permalink,
    wordsToAdd
  );
  print('Added ${wordsToAdd.length} words to "${createdWordList.name}".\n');

  List<String> wordsToDelete = List<String>()
    ..add(exampleWord.word)
    ..add(randomAdjectives[random.nextInt(randomAdjectives.length)].word);
  await wordnik.deleteWordsFromWordList(
    authToken.token,
    createdWordList.permalink,
    wordsToDelete
  );
  print('Deleted ${wordsToDelete.length} words from "${createdWordList.name}".\n');

  WordList modifiedWordList = createdWordList
    ..description = 'I feel like a ${randomAdjectives[random.nextInt(randomAdjectives.length)].word} ${randomNoun.word} ${exampleWord.word}.';
  await wordnik.updateWordList(
    authToken.token,
    modifiedWordList.permalink,
    modifiedWordList
  );
  print('Updated description for "${modifiedWordList.name}".\n');

  List<WordList> userWordLists = await wordnik.getWordListsForLoggedInUser(authToken.token);
  print('Found ${userWordLists.length} word lists. The first one is titled "${userWordLists.first.name}".\n');

  WordList ourWordList = await wordnik.getWordListByPermalink(
    authToken.token,
    createdWordList.permalink
  );
  print('"${ourWordList.name}" now contains ${ourWordList.numberWordsInList} words and the description is "${ourWordList.description}".\n');

  List<WordListWord> wordListWords = await wordnik.getWordListWords(
    authToken.token,
    ourWordList.permalink
  );
  print('The words on the list are: ${wordListWords.map((word) => word.word).join(', ')}.\n');

  await wordnik.deleteWordList(
    authToken.token,
    ourWordList.permalink
  );
  print('Deleted "${ourWordList.name}".\n');
}
