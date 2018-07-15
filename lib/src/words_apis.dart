import 'dart:async';

import 'package:intl/intl.dart';
import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/definition_search_results.dart';
import 'package:wordnik/src/word_object.dart';
import 'package:wordnik/src/word_of_the_day.dart';
import 'package:wordnik/src/word_search_results.dart';

abstract class WordsApis implements ApiClient {
  final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');

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

    return WordObject.fromJson(await queryApi('words', 'json', 'randomWord', queryParameters: parameters));
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

    List<dynamic> wordList = await queryApi('words', 'json', 'randomWords', queryParameters: parameters);

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

    return DefinitionSearchResults.fromJson(await queryApi('words', 'json', 'reverseDictionary', queryParameters: parameters));
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
