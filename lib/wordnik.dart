import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

import 'package:wordnik/src/api_token_status.dart';
import 'package:wordnik/src/audio_file.dart';
import 'package:wordnik/src/authentication_token.dart';
import 'package:wordnik/src/bigram.dart';
import 'package:wordnik/src/definition_search_results.dart';
import 'package:wordnik/src/definition.dart';
import 'package:wordnik/src/example_search_results.dart';
import 'package:wordnik/src/example.dart';
import 'package:wordnik/src/frequency_summary.dart';
import 'package:wordnik/src/related.dart';
import 'package:wordnik/src/string_value.dart';
import 'package:wordnik/src/syllable.dart';
import 'package:wordnik/src/text_pron.dart';
import 'package:wordnik/src/user.dart';
import 'package:wordnik/src/word_list_word.dart';
import 'package:wordnik/src/word_list.dart';
import 'package:wordnik/src/word_object.dart';
import 'package:wordnik/src/word_of_the_day.dart';
import 'package:wordnik/src/word_search_results.dart';

export 'package:wordnik/src/api_token_status.dart';
export 'package:wordnik/src/audio_file.dart';
export 'package:wordnik/src/audio_type.dart';
export 'package:wordnik/src/authentication_token.dart';
export 'package:wordnik/src/bigram.dart';
export 'package:wordnik/src/category.dart';
export 'package:wordnik/src/citation.dart';
export 'package:wordnik/src/content_provider.dart';
export 'package:wordnik/src/definition_search_results.dart';
export 'package:wordnik/src/definition.dart';
export 'package:wordnik/src/example_search_results.dart';
export 'package:wordnik/src/example_usage.dart';
export 'package:wordnik/src/example.dart';
export 'package:wordnik/src/facet_value.dart';
export 'package:wordnik/src/facet.dart';
export 'package:wordnik/src/frequency_summary.dart';
export 'package:wordnik/src/frequency.dart';
export 'package:wordnik/src/label.dart';
export 'package:wordnik/src/note.dart';
export 'package:wordnik/src/part_of_speech.dart';
export 'package:wordnik/src/related.dart';
export 'package:wordnik/src/root.dart';
export 'package:wordnik/src/scored_word.dart';
export 'package:wordnik/src/sentence.dart';
export 'package:wordnik/src/simple_definition.dart';
export 'package:wordnik/src/simple_example.dart';
export 'package:wordnik/src/string_value.dart';
export 'package:wordnik/src/syllable.dart';
export 'package:wordnik/src/text_pron.dart';
export 'package:wordnik/src/user.dart';
export 'package:wordnik/src/word_list_word.dart';
export 'package:wordnik/src/word_list.dart';
export 'package:wordnik/src/word_object.dart';
export 'package:wordnik/src/word_of_the_day.dart';
export 'package:wordnik/src/word_search_result.dart';
export 'package:wordnik/src/word_search_results.dart';

enum ApiMethods {
  get,
  post,
  put,
  delete
}

class Wordnik {
  static const int _apiVersion = 4;
  static const String _apiRoot = 'api.wordnik.com';
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');

  final String apiKey;

  Wordnik(this.apiKey);

  Future<String> _queryApi(String resource, String format, String operation, {String extraTerm, Map<String, String> queryParameters, ApiMethods method = ApiMethods.get, dynamic body, String authToken}) async {
    List<String> segments = [
      'v$_apiVersion',
      '$resource.$format',
      operation
    ];

    if (extraTerm != null) {
      segments.add(extraTerm);
    }

    Uri queryUri = Uri(
      scheme: 'https',
      host: _apiRoot,
      pathSegments: segments,
      queryParameters: queryParameters,
    );

    Map<String, String> headers = {
      'api_key': apiKey,
      'Content-Type': 'application/json'
    };

    if (authToken != null) {
      headers['auth_token'] = authToken;
    }

    http.Response response;
    switch (method) {
      case ApiMethods.post:
        response = await http.post(queryUri, headers: headers, body: json.encode(body));
        break;
      case ApiMethods.put:
        response = await http.put(queryUri, headers: headers, body: json.encode(body));
        break;
      case ApiMethods.delete:
        response = await http.delete(queryUri, headers: headers);
        break;
      case ApiMethods.get:
      default:
        response = await http.get(queryUri, headers: headers);
        break;
    }

    // TODO: handle status codes, etc
    return response.body;
  }

  Future<ApiTokenStatus> getApiTokenStatus() async {
    String statusJson = await _queryApi('account', 'json', 'apiTokenStatus');

    return ApiTokenStatus.fromJson(json.decode(statusJson));
  }

  // TODO: GET version of authenticate is not implemented
  Future<AuthenticationToken> authenticate(
    String username,
    String password
  ) async {
    String tokenJson = await _queryApi('account', 'json', 'authenticate', extraTerm: username, method: ApiMethods.post, body: password);

    return AuthenticationToken.fromJson(json.decode(tokenJson));
  }

  Future<User> getLoggedInUser(
    String authToken
  ) async {
    String userJson = await _queryApi('account', 'json', 'user', authToken: authToken);

    return User.fromJson(json.decode(userJson));
  }

  Future<List<WordList>> getWordListsForLoggedInUser(
    String authToken,
    {
      int skip = 0,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'skip': '$skip',
      'limit': '$limit'
    };

    String wordListJson = await _queryApi('account', 'json', 'wordLists', queryParameters: parameters, authToken: authToken);

    List<dynamic> wordList = json.decode(wordListJson);

    return wordList.map((list) => WordList.fromJson(list)).toList();
  }

  // TODO: doesn't return any success/failure status?
  Future<void> deleteWordList(
    String authToken,
    String permalink
  ) async {
    await _queryApi('wordList', 'json', permalink, method: ApiMethods.delete, authToken: authToken);
  }

  Future<WordList> getWordListByPermalink(
    String authToken,
    String permalink
  ) async {
    String wordListJson = await _queryApi('wordList', 'json', permalink, authToken: authToken);

    return WordList.fromJson(json.decode(wordListJson));
  }

  // TODO: doesn't return any success/failure status?
  Future<void> updateWordList(
    String authToken,
    String permalink,
    WordList modifiedWordList
  ) async {
    await _queryApi('wordList', 'json', permalink, method: ApiMethods.put, body: modifiedWordList, authToken: authToken);
  }

  // TODO: doesn't return any success/failure status?
  Future<void> deleteWordsFromWordList(
    String authToken,
    String permalink,
    List<StringValue> wordsToDelete
  ) async {
    await _queryApi('wordList', 'json', permalink, extraTerm: 'deleteWords', method: ApiMethods.post, body: wordsToDelete, authToken: authToken);
  }

  Future<List<WordListWord>> getWordListWords(
    String authToken,
    String permalink,
    {
      String sortBy = 'createDate',
      String sortOrder = 'desc',
      int skip = 0,
      int limit = 100
    }
  ) async {
    Map<String, String> parameters = {
      'sortBy': sortBy,
      'sortOrder': sortOrder,
      'skip': '$skip',
      'limit': '$limit'
    };

    String wordListWordListJson = await _queryApi('wordList', 'json', permalink, extraTerm: 'words', queryParameters: parameters, authToken: authToken);

    List<dynamic> wordListWordList = json.decode(wordListWordListJson);

    return wordListWordList.map((word) => WordListWord.fromJson(word)).toList();
  }

  // TODO: doesn't return any success/failure status?
  Future<void> addWordsToWordList(
    String authToken,
    String permalink,
    List<StringValue> wordsToAdd
  ) async {
    await _queryApi('wordList', 'json', permalink, extraTerm: 'words', method: ApiMethods.post, body: wordsToAdd, authToken: authToken);
  }

  Future<WordList> createWordList(
    String authToken,
    WordList newWordList
  ) async {
    String wordListJson = await _queryApi('wordLists', 'json', '', method: ApiMethods.post, body: newWordList, authToken: authToken);

    return WordList.fromJson(json.decode(wordListJson));
  }

  Future<WordObject> getWord(
    String word,
    {
      bool useCanonical = false,
      bool includeSuggestions = true
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'includeSuggestions': '$includeSuggestions'
    };

    String wordJson = await _queryApi('word', 'json', word, queryParameters: parameters);

    return WordObject.fromJson(json.decode(wordJson));
  }

  Future<List<AudioFile>> getAudio(
    String word,
    {
      bool useCanonical = false,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'limit': '$limit'
    };

    String audioListJson = await _queryApi('word', 'json', word, extraTerm: 'audio', queryParameters: parameters);
    List<dynamic> audioList = json.decode(audioListJson);

    return audioList.map((audio) => AudioFile.fromJson(audio)).toList();
  }

  Future<List<Definition>> getDefinitions(
    String word,
    {
      int limit = 200,
      String partOfSpeech,
      bool includeRelated = false,
      List<String> sourceDictionaries,
      bool useCanonical = false,
      bool includeTags = false
    }
  ) async {
    Map<String, String> parameters = {
      'word': word,
      'limit': '$limit',
      'partOfSpeech': partOfSpeech,
      'includeRelated': '$includeRelated',
      'sourceDictionaries': sourceDictionaries?.join(',') ?? '',
      'useCanonical': '$useCanonical',
      'includeTags': '$includeTags'
    };

    String definitionListJson = await _queryApi('word', 'json', word, extraTerm: 'definitions', queryParameters: parameters);
    List<dynamic> definitionList = json.decode(definitionListJson);

    return definitionList.map((definition) => Definition.fromJson(definition)).toList();
  }

  Future<List<String>> getEtymologies(
    String word,
    {
      bool useCanonical = false,
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical'
    };

    String eListJson = await _queryApi('word', 'json', word, extraTerm: 'etymologies', queryParameters: parameters);

    return json.decode(eListJson);
  }

  Future<ExampleSearchResults> getExamples(
    String word,
    {
      bool includeDuplicates = false,
      bool useCanonical = false,
      int skip = 0,
      int limit = 5
    }
  ) async {
    Map<String, String> parameters = {
      'includeDuplicates': '$includeDuplicates',
      'useCanonical': '$useCanonical',
      'skip': '$skip',
      'limit': '$limit'
    };

    String examplesJson = await _queryApi('word', 'json', word, extraTerm: 'examples', queryParameters: parameters);

    return ExampleSearchResults.fromJson(json.decode(examplesJson));
  }

  Future<FrequencySummary> getWordFrequency(
    String word,
    {
      bool useCanonical = false,
      int startYear = 1800,
      int endYear = 2012
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'startYear': '$startYear',
      'endYear': '$endYear'
    };

    String frequencyJson = await _queryApi('word', 'json', word, extraTerm: 'frequency', queryParameters: parameters);

    return FrequencySummary.fromJson(json.decode(frequencyJson));
  }

  Future<List<Syllable>> getHyphenation(
    String word,
    {
      bool useCanonical = false,
      String sourceDictionary,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'sourceDictionary': '$sourceDictionary',
      'limit': '$limit'
    };

    String syllableListJson = await _queryApi('word', 'json', word, extraTerm: 'hyphenation', queryParameters: parameters);
    List<dynamic> syllableList = json.decode(syllableListJson);

    return syllableList.map((syllable) => Syllable.fromJson(syllable)).toList();
  }

  Future<List<Bigram>> getPhrases(
    String word,
    {
      bool useCanonical = false,
      int limit = 5,
      int wlmi = 0
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'limit': '$limit',
      'wlmi': '$wlmi'
    };

    String bigramListJson = await _queryApi('word', 'json', word, extraTerm: 'phrases', queryParameters: parameters);
    List<dynamic> bigramList = json.decode(bigramListJson);

    return bigramList.map((bigram) => Bigram.fromJson(bigram)).toList();
  }

  Future<List<TextPron>> getTextPronunciations(
    String word,
    {
      bool useCanonical = false,
      String sourceDictionary,
      String typeFormat,
      int limit = 50
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'sourceDictionary': '$sourceDictionary',
      'typeFormat': '$typeFormat',
      'limit': '$limit'
    };

    String proListJson = await _queryApi('word', 'json', word, extraTerm: 'pronunciations', queryParameters: parameters);
    List<dynamic> proList = json.decode(proListJson);

    return proList.map((pro) => TextPron.fromJson(pro)).toList();
  }

  Future<List<Related>> getRelatedWords(
    String word,
    {
      bool useCanonical = false,
      String relationshipTypes,
      int limitPerRelationshipType = 10
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical',
      'relationshipTypes': '$relationshipTypes',
      'limitPerRelationshipType': '$limitPerRelationshipType'
    };

    String relatedListJson = await _queryApi('word', 'json', word, extraTerm: 'relatedWords', queryParameters: parameters);
    List<dynamic> relatedList = json.decode(relatedListJson);

    return relatedList.map((related) => Related.fromJson(related)).toList();
  }

  Future<Example> getTopExample(
    String word,
    {
      bool useCanonical = false
    }
  ) async {
    Map<String, String> parameters = {
      'useCanonical': '$useCanonical'
    };

    String exampleJson = await _queryApi('word', 'json', word, extraTerm: 'topExample', queryParameters: parameters);

    return Example.fromJson(json.decode(exampleJson));
  }

  Future<WordObject> getRandomWord(
    {
      bool hasDictionaryDef = true,
      String includePartOfSpeech = '',
      String excludePartOfSpeech = '',
      int minCorpusCount = 1,
      int maxCorpusCount = -1,
      int minDictionaryCount = 1,
      int maxDictionaryCount = -1,
      int minLength = 1,
      int maxLength = -1
    }
  ) async {
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

    return WordObject.fromJson(json.decode(wordJson));
  }

  Future<List<WordObject>> getRandomWords(
    {
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
    }
  ) async {
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

    return wordList.map((word) => WordObject.fromJson(word)).toList();
  }

  Future<DefinitionSearchResults> reverseDictionary(
    String query,
    {
      String findSenseForWord,
      String includeSourceDictionaries,
      String excludeSourceDictionaries,
      String includePartOfSpeech,
      String excludePartOfSpeech,
      int minCorpusCount = 5,
      int maxCorpusCount = -1,
      int minLength = 1,
      int maxLength = -1,
      String expandTerms,
      bool includeTags = false,
      String sortBy,
      String sortOrder,
      int skip = 0,
      int limit = 10
    }
  ) async {
    Map<String, String> parameters = {
      'query': query,
      'findSenseForWord': findSenseForWord,
      'includeSourceDictionaries': includeSourceDictionaries,
      'excludeSourceDictionaries': excludeSourceDictionaries,
      'includePartOfSpeech': includePartOfSpeech,
      'excludePartOfSpeech': excludePartOfSpeech,
      'minCorpusCount': '$minCorpusCount',
      'maxCorpusCount': '$maxCorpusCount',
      'minLength': '$minLength',
      'maxLength': '$maxLength',
      'expandTerms': expandTerms,
      'includeTags': '$includeTags',
      'sortBy': sortBy,
      'sortOrder': sortOrder,
      'skip': '$skip',
      'limit': '$limit'
    };

    String reverseDictionaryJson = await _queryApi('words', 'json', 'reverseDictionary', queryParameters: parameters);

    return DefinitionSearchResults.fromJson(json.decode(reverseDictionaryJson));
  }

  Future<WordSearchResults> searchWords(
    String query,
    {
      bool allowRegex = false,
      bool caseSensitive = true,
      String includePartOfSpeech,
      String excludePartOfSpeech,
      int minCorpusCount = 5,
      int maxCorpusCount = -1,
      int minDictionaryCount = 1,
      int maxDictionaryCount = -1,
      int minLength = 1,
      int maxLength = -1,
      int skip = 0,
      int limit = 10
    }
  ) async {
    Map<String, String> parameters = {
      'allowRegex': '$allowRegex',
      'caseSensitive': '$caseSensitive',
      'includePartOfSpeech': includePartOfSpeech,
      'excludePartOfSpeech': excludePartOfSpeech,
      'minCorpusCount': '$minCorpusCount',
      'maxCorpusCount': '$maxCorpusCount',
      'minDictionaryCount': '$minDictionaryCount',
      'maxDictionaryCount': '$maxDictionaryCount',
      'minLength': '$minLength',
      'maxLength': '$maxLength',
      'skip': '$skip',
      'limit': '$limit'
    };

    String wordSearchJson = await _queryApi('words', 'json', 'search', extraTerm: query, queryParameters: parameters);

    return WordSearchResults.fromJson(json.decode(wordSearchJson));
  }

  Future<WordOfTheDay> getWordOfTheDay(
    {
      DateTime date
    }
  ) async {
    Map<String, String> parameters = (date == null) ? null : {
      'date': _dateFormat.format(date)
    };

    String wordOfTheDayJson = await _queryApi('words', 'json', 'wordOfTheDay', queryParameters: parameters);

    return WordOfTheDay.fromJson(json.decode(wordOfTheDayJson));
  }
}
