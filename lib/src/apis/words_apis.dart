import 'dart:async';

import 'package:intl/intl.dart';
import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/models/definition_search_results.dart';
import 'package:wordnik/src/models/part_of_speech_options.dart';
import 'package:wordnik/src/models/word_object.dart';
import 'package:wordnik/src/models/word_of_the_day.dart';
import 'package:wordnik/src/models/word_search_results.dart';

/// Contains the API calls for the `words` endpoint.
abstract class WordsApis implements ApiClient {
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');

  /// Returns a single random [WordObject].
  ///
  /// If [hasDictionaryDef] is `true`, only words with dictionary definitions will be
  /// returned.
  ///
  /// You can specify which [partsOfSpeech] to include or exclude by passing a configured
  /// [PartOfSpeechOptions]. Setting a property to `true` will include it, while `false`
  /// will exclude it. If you do not set a property it will default to `null` and be
  /// unaffected. Not passing a [PartOfSpeechOptions] has the same effect as passing
  /// one will all properties set to `null` (defaults) -- all parts of speech will be
  /// included.
  ///
  /// You can choose to only return words with a corpus frequency between [minCorpusCount]
  /// and [maxCorpusCount]. Set [maxCorpusCount] to `-1` to have no maximum.
  ///
  /// You can choose to only return words that appear in [minDictionaryCount] to
  /// [maxDictionaryCount] dictionaries. Set [maxDictionaryCount] to `-1` to have no
  /// maximum.
  ///
  /// You can choose to only return words with a length of [minLength] to [maxLength].
  /// Set [maxLength] to `-1` to have no maximum.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<WordObject> getRandomWord(
    {
      bool hasDictionaryDef = true,
      PartOfSpeechOptions partsOfSpeech,
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
      'includePartOfSpeech': partsOfSpeech?.includeString ?? '',
      'excludePartOfSpeech': partsOfSpeech?.excludeString ?? '',
      'minCorpusCount': '$minCorpusCount',
      'maxCorpusCount': '$maxCorpusCount',
      'minDictionaryCount': '$minDictionaryCount',
      'maxDictionaryCount': '$maxDictionaryCount',
      'minLength': '$minLength',
      'maxLength': '$maxLength'
    };

    return WordObject.fromJson(await queryApi('words', 'json', 'randomWord', queryParameters: parameters));
  }

  // TODO: make `sortBy` an enum
  // TODO: make `sortOrder` an enum
  /// Returns a [List] of random [WordObject].
  /// 
  /// If [hasDictionaryDef] is `true`, only words with dictionary definitions will be
  /// returned.
  ///
  /// You can specify which [partsOfSpeech] to include or exclude by passing a configured
  /// [PartOfSpeechOptions]. Setting a property to `true` will include it, while `false`
  /// will exclude it. If you do not set a property it will default to `null` and be
  /// unaffected. Not passing a [PartOfSpeechOptions] has the same effect as passing
  /// one will all properties set to `null` (defaults) -- all parts of speech will be
  /// included.
  ///
  /// You can choose to only return words with a corpus frequency between [minCorpusCount]
  /// and [maxCorpusCount]. Set [maxCorpusCount] to `-1` to have no maximum.
  ///
  /// You can choose to only return words that appear in [minDictionaryCount] to
  /// [maxDictionaryCount] dictionaries. Set [maxDictionaryCount] to `-1` to have no
  /// maximum.
  ///
  /// You can choose to only return words with a length of [minLength] to [maxLength].
  /// Set [maxLength] to `-1` to have no maximum.
  /// 
  /// You can specify an attribute to [sortBy] and the [sortOrder].
  /// 
  /// You can choose how many words are returned by specifying a [limit].
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<List<WordObject>> getRandomWords(
    {
      bool hasDictionaryDef = true,
      PartOfSpeechOptions partsOfSpeech,
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
      'includePartOfSpeech': partsOfSpeech?.includeString ?? '',
      'excludePartOfSpeech': partsOfSpeech?.excludeString ?? '',
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

    List<dynamic> wordList = await queryApi('words', 'json', 'randomWords', queryParameters: parameters);

    return wordList.map((word) => WordObject.fromJson(word)).toList();
  }

  // TODO: Make include/excludeSourceDictionaries like partsOfSpeech?
  Future<DefinitionSearchResults> reverseDictionary(
    String query,
    {
      String findSenseForWord,
      String includeSourceDictionaries,
      String excludeSourceDictionaries,
      PartOfSpeechOptions partsOfSpeech,
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
      'includePartOfSpeech': partsOfSpeech?.includeString ?? '',
      'excludePartOfSpeech': partsOfSpeech?.excludeString ?? '',
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

    return DefinitionSearchResults.fromJson(await queryApi('words', 'json', 'reverseDictionary', queryParameters: parameters));
  }

  Future<WordSearchResults> searchWords(
    String query,
    {
      bool allowRegex = false,
      bool caseSensitive = true,
      PartOfSpeechOptions partsOfSpeech,
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
      'includePartOfSpeech': partsOfSpeech?.includeString ?? '',
      'excludePartOfSpeech': partsOfSpeech?.excludeString ?? '',
      'minCorpusCount': '$minCorpusCount',
      'maxCorpusCount': '$maxCorpusCount',
      'minDictionaryCount': '$minDictionaryCount',
      'maxDictionaryCount': '$maxDictionaryCount',
      'minLength': '$minLength',
      'maxLength': '$maxLength',
      'skip': '$skip',
      'limit': '$limit'
    };

    return WordSearchResults.fromJson(await queryApi('words', 'json', 'search', extraTerm: query, queryParameters: parameters));
  }

  Future<WordOfTheDay> getWordOfTheDay(
    {
      DateTime date
    }
  ) async {
    Map<String, String> parameters = (date == null) ? null : {
      'date': _dateFormat.format(date)
    };

    return WordOfTheDay.fromJson(await queryApi('words', 'json', 'wordOfTheDay', queryParameters: parameters));
  }
}
