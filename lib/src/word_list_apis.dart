import 'dart:async';

import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/enums.dart';
import 'package:wordnik/src/string_value.dart';
import 'package:wordnik/src/word_list.dart';
import 'package:wordnik/src/word_list_word.dart';

abstract class WordListApis implements ApiClient {
    // TODO: doesn't return any success/failure status?
  Future<void> deleteWordList(
    String authToken,
    String permalink
  ) async {
    await queryApi('wordList', 'json', permalink, method: ApiMethods.delete, authToken: authToken);
  }

  Future<WordList> getWordListByPermalink(
    String authToken,
    String permalink
  ) async {
    return WordList.fromJson(await queryApi('wordList', 'json', permalink, authToken: authToken));
  }

  // TODO: doesn't return any success/failure status?
  Future<void> updateWordList(
    String authToken,
    String permalink,
    WordList modifiedWordList
  ) async {
    await queryApi('wordList', 'json', permalink, method: ApiMethods.put, body: modifiedWordList, authToken: authToken);
  }

  // TODO: doesn't return any success/failure status?
  Future<void> deleteWordsFromWordList(
    String authToken,
    String permalink,
    List<StringValue> wordsToDelete
  ) async {
    await queryApi('wordList', 'json', permalink, extraTerm: 'deleteWords', method: ApiMethods.post, body: wordsToDelete, authToken: authToken);
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

    List<dynamic> wordListWordList = await queryApi('wordList', 'json', permalink, extraTerm: 'words', queryParameters: parameters, authToken: authToken);

    return wordListWordList.map((word) => WordListWord.fromJson(word)).toList();
  }

  // TODO: doesn't return any success/failure status?
  Future<void> addWordsToWordList(
    String authToken,
    String permalink,
    List<StringValue> wordsToAdd
  ) async {
    await queryApi('wordList', 'json', permalink, extraTerm: 'words', method: ApiMethods.post, body: wordsToAdd, authToken: authToken);
  }
}
