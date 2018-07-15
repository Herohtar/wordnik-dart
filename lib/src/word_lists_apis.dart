import 'dart:async';

import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/enums.dart';
import 'package:wordnik/src/word_list.dart';

abstract class WordListsApis implements ApiClient {
  Future<WordList> createWordList(
    String authToken,
    WordList newWordList
  ) async {
    return WordList.fromJson(await queryApi('wordLists', 'json', '', method: ApiMethods.post, body: newWordList, authToken: authToken));
  }
}
