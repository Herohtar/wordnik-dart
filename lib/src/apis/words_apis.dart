import 'dart:async';

import 'package:intl/intl.dart';
import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/enums.dart';
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
      SortBy sortBy = SortBy.alpha,
      SortOrder sortOrder = SortOrder.desc,
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
      'sortBy': (sortBy == null) ? '' : sortBy.toString().split('.')[1],
      'sortOrder': (sortOrder == null) ? '' : sortOrder.toString().split('.')[1],
      'limit': '$limit'
    };

    List<dynamic> wordList = await queryApi('words', 'json', 'randomWords', queryParameters: parameters);

    return wordList.map((word) => WordObject.fromJson(word)).toList();
  }

  // TODO: what does `expandTerms` do?
  /// Performs a reverse dictionary search based on the [query].
  ///
  /// As an example, a [query] of *"eating utensil with prongs"* will return a
  /// [DefinitionSearchResults] object containing a [Definition] for the word *"fork"*.
  ///
  /// You can further refine a search that returns many results by speifying a general
  /// sense for the words in [findSenseForWord].
  ///
  /// You can provide a [List] of dictionaries in [sourceDictionaries]. If [includeSourceDictionaries]
  /// is set to `true` (the default), only the specified dictionaries will be searched.
  /// If `false`, the specified dictionaries will be excluded from the search. If [sourceDictionaries]
  /// is empty or `null` (default) all dictionaries will be searched. Valid values are:
  /// `ahd`, `century`, `cmu`, `macmillan`, `wiktionary`, `webster`, and `wordnet`.
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
  /// You can choose to only return words with a length of [minLength] to [maxLength].
  /// Set [maxLength] to `-1` to have no maximum.
  ///
  /// You can specify [expandTerms], but the API isn't clear what that actually does...
  ///
  /// If [includeTags] is `true`, the response text will include XML tags.
  ///
  /// You can specify an attribute to [sortBy] and the [sortOrder].
  ///
  /// You can skip over the first [skip] results, and limit the number
  /// of returned results to [limit].
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<DefinitionSearchResults> reverseDictionary(
    String query,
    {
      String findSenseForWord,
      List<String> sourceDictionaries,
      bool includeSourceDictionaries = true,
      PartOfSpeechOptions partsOfSpeech,
      int minCorpusCount = 5,
      int maxCorpusCount = -1,
      int minLength = 1,
      int maxLength = -1,
      String expandTerms,
      bool includeTags = false,
      SortBy sortBy,
      SortOrder sortOrder,
      int skip = 0,
      int limit = 10
    }
  ) async {
    Map<String, String> parameters = {
      'query': query,
      'findSenseForWord': findSenseForWord,
      'includeSourceDictionaries': includeSourceDictionaries ? sourceDictionaries?.join(',') : '',
      'excludeSourceDictionaries': includeSourceDictionaries ? '' : sourceDictionaries?.join(','),
      'includePartOfSpeech': partsOfSpeech?.includeString ?? '',
      'excludePartOfSpeech': partsOfSpeech?.excludeString ?? '',
      'minCorpusCount': '$minCorpusCount',
      'maxCorpusCount': '$maxCorpusCount',
      'minLength': '$minLength',
      'maxLength': '$maxLength',
      'expandTerms': expandTerms,
      'includeTags': '$includeTags',
      'sortBy': (sortBy == null) ? '' : sortBy.toString().split('.')[1],
      'sortOrder': (sortOrder == null) ? '' : sortOrder.toString().split('.')[1],
      'skip': '$skip',
      'limit': '$limit'
    };

    return DefinitionSearchResults.fromJson(await queryApi('words', 'json', 'reverseDictionary', queryParameters: parameters));
  }

  /// Returns [WordSearchResults] for all the words that match the given [query].
  ///
  /// Set [isRegex] to `true` to tell the API to parse the [query] as a `Regular Expression`.
  ///
  /// You can optionally specify whether the search should be [caseSensitive].
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
  /// You can skip over the first [skip] results, and limit the number
  /// of returned results to [limit].
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<WordSearchResults> searchWords(
    String query,
    {
      bool isRegex = false,
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
      'allowRegex': '$isRegex',
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

  /// Returns a [WordOfTheDay].
  ///
  /// By default, returns the [WordOfTheDay] for the current day; however, if a [date]
  /// is specified, the [WordOfTheDay] for that day will be returned.
  ///
  /// Throws an [ApiException] if the API returns an error status.
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
