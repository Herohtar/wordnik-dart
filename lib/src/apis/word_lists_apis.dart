import 'dart:async';

import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/enums.dart';
import 'package:wordnik/src/models/word_list.dart';

/// Contains the API calls for the `wordLists` endpoint.
abstract class WordListsApis implements ApiClient {
  /// Creates a [WordList] for the authenticated user.
  ///
  /// Requires a valid [authToken] from [authenticate].
  ///
  /// The [newWordList] must specify at least [WordList.name] and [WordList.type],
  /// while [WordList.description] is optional. None of the other properties can
  /// be set manually and will be ignored by the API.
  ///
  /// Throws an [ApiException] if the API returns an error status.
  Future<WordList> createWordList(
    String authToken,
    WordList newWordList
  ) async {
    return WordList.fromJson(await queryApi('wordLists', 'json', '', method: ApiMethods.post, body: newWordList, authToken: authToken));
  }
}
