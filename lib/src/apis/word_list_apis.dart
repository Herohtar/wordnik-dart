import 'dart:async';

import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/enums.dart';
import 'package:wordnik/src/models/string_value.dart';
import 'package:wordnik/src/models/word_list.dart';
import 'package:wordnik/src/models/word_list_word.dart';

/// Contains the API calls for the `wordList` endpoint.
abstract class WordListApis implements ApiClient {
  /// Deletes an existing [WordList] belonging to the authenticated user.
  ///
  /// Requires a valid [authToken] from [authenticate].
  ///
  /// You must specify the list to delete by its [permalink].
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<void> deleteWordList(
    String authToken,
    String permalink
  ) async {
    await queryApi('wordList', 'json', permalink, method: ApiMethods.delete, authToken: authToken);
  }

  /// Fetches a [WordList] by its [permalink].
  ///
  /// Requires a valid [authToken] from [authenticate].
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<WordList> getWordListByPermalink(
    String authToken,
    String permalink
  ) async {
    return WordList.fromJson(await queryApi('wordList', 'json', permalink, authToken: authToken));
  }

  /// Updates an existing [WordList] belonging to the authenticated user.
  ///
  /// Requires a valid [authToken] from [authenticate].
  ///
  /// You must specify the list to update by its [permalink].
  ///
  /// The [modifiedWordList] can change [WordList.name], [WordList.type],
  /// or [WordList.description]. The other properties can not be changed
  /// and any changes will be ignored by the API.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<void> updateWordList(
    String authToken,
    String permalink,
    WordList modifiedWordList
  ) async {
    await queryApi('wordList', 'json', permalink, method: ApiMethods.put, body: modifiedWordList, authToken: authToken);
  }

  /// Removes words from a [WordList] belonging to the authenticated user.
  ///
  /// Requires a valid [authToken] from [authenticate].
  ///
  /// You must specify the list to modify by its [permalink].
  ///
  /// The [wordsToDelete] are case-sensitive, so passing `Cats` will not
  /// remove `cats` from the list, for example.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<void> deleteWordsFromWordList(
    String authToken,
    String permalink,
    List<String> wordsToDelete
  ) async {
    await queryApi('wordList', 'json', permalink, extraTerm: 'deleteWords', method: ApiMethods.post, body: wordsToDelete.map((word) => StringValue(word: word)).toList(), authToken: authToken);
  }

  /// Fetches a [List] of [WordListWord] from a [WordList] belonging to
  /// the authenticated user.
  ///
  /// Requires a valid [authToken] from [authenticate].
  ///
  /// You must specify the list to modify by its [permalink].
  ///
  /// Optionally, the property to [sortBy] can be specified as well as the
  /// [sortOrder].
  ///
  /// You can [skip] a number of words and [limit] the number of words returned.
  ///
  /// Throws an [ApiException] if the API returns an error status.
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

  /// Adds words to a [WordList] belonging to the authenticated user.
  ///
  /// Requires a valid [authToken] from [authenticate].
  ///
  /// You must specify the list to modify by its [permalink].
  ///
  /// The [wordsToAdd] are case-sensitive, so adding `Cats` and `cats`
  /// will result in two separate entries.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<void> addWordsToWordList(
    String authToken,
    String permalink,
    List<String> wordsToAdd
  ) async {
    await queryApi('wordList', 'json', permalink, extraTerm: 'words', method: ApiMethods.post, body: wordsToAdd.map((word) => StringValue(word: word)).toList(), authToken: authToken);
  }
}
