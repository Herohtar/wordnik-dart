import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wordnik/src/word_object.dart';

export 'package:wordnik/src/word_object.dart';

class Wordnik {
  static const int _apiVersion = 4;
  static const String _apiRoot = 'api.wordnik.com';

  final String apiKey;

  Wordnik(this.apiKey);

  Future<String> _queryApi(String resource, String format, String operation, {Map<String, String> queryParameters}) async {
    Uri queryUri = Uri(
      scheme: 'https',
      host: _apiRoot,
      pathSegments: ['v$_apiVersion', '$resource.$format', operation],
      queryParameters: queryParameters,
    );

    return await http.read(queryUri, headers: {'api_key' : apiKey});
  }

  Future<WordObject> getWord(
    String word,
    {
      bool useCanonical = false,
      bool includeSuggestions = true
    }) async {

    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'includeSuggestions': '$includeSuggestions'
    };

    String wordJson = await _queryApi('word', 'json', word, queryParameters: parameters);

    return WordObject.fromJson(wordJson);
  }

  Future<WordObject> getRandomWord({
    bool hasDictionaryDef = true,
    String includePartOfSpeech = '',
    String excludePartOfSpeech = '',
    int minCorpusCount = 1,
    int maxCorpusCount = -1,
    int minDictionaryCount = 1,
    int maxDictionaryCount = -1,
    int minLength = 1,
    int maxLength = -1
    }) async {

    Map<String, String> parameters = {
      'hasDictionaryDef': '$hasDictionaryDef',
      'includePartOfSpeech': includePartOfSpeech,
      'excludePartOfSpeech': excludePartOfSpeech,
      'minCorpusCount': '$minCorpusCount',
      'maxCorpusCount': '$maxCorpusCount',
      'minDictionaryCount': '$minDictionaryCount',
      'maxDictionaryCount': '$maxDictionaryCount',
      'minLength': '$minLength',
      'maxLength': '$maxLength'
    };

    String wordJson = await _queryApi('words', 'json', 'randomWord', queryParameters: parameters);

    return WordObject.fromJson(wordJson);
  }

  Future<List<WordObject>> getRandomWords({
    bool hasDictionaryDef = true,
    String includePartOfSpeech = '',
    String excludePartOfSpeech = '',
    int minCorpusCount = 1,
    int maxCorpusCount = -1,
    int minDictionaryCount = 1,
    int maxDictionaryCount = -1,
    int minLength = 1,
    int maxLength = -1,
    String sortBy = 'alpha',
    String sortOrder = 'desc',
    int limit = 10
    }) async {

    Map<String, String> parameters = {
      'hasDictionaryDef': '$hasDictionaryDef',
      'includePartOfSpeech': includePartOfSpeech,
      'excludePartOfSpeech': excludePartOfSpeech,
      'minCorpusCount': '$minCorpusCount',
      'maxCorpusCount': '$maxCorpusCount',
      'minDictionaryCount': '$minDictionaryCount',
      'maxDictionaryCount': '$maxDictionaryCount',
      'minLength': '$minLength',
      'maxLength': '$maxLength',
      'sortBy': sortBy,
      'sortOrder': sortOrder,
      'limit': '$limit'
    };

    String wordListJson = await _queryApi('words', 'json', 'randomWords', queryParameters: parameters);
    List<dynamic> wordList = json.decode(wordListJson);

    return wordList.map((word) => WordObject.fromMap(word)).toList();
  }
}
