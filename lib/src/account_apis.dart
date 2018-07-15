import 'dart:async';

import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/api_token_status.dart';
import 'package:wordnik/src/authentication_token.dart';
import 'package:wordnik/src/enums.dart';
import 'package:wordnik/src/user.dart';
import 'package:wordnik/src/word_list.dart';

abstract class AccountApis implements ApiClient {
  /// Returns usage statistics for the API account.
  ///
  /// The API documentation for this is somewhat confusing, but
  /// it actually returns the statistics for your API key.
  Future<ApiTokenStatus> getApiTokenStatus() async {
    return ApiTokenStatus.fromJson(await queryApi('account', 'json', 'apiTokenStatus'));
  }

  /// Authenticates with a Wordnik [username] and [password]
  ///
  /// Returns an [AuthenticationToken] containing the tokens necessary
  /// for API calls that require an authenticated user.
  ///
  /// The API documentation also describes a HTTP GET version, but
  /// only the HTTP POST variant is implemented here for security.
  Future<AuthenticationToken> authenticate(
    String username,
    String password
  ) async {
    return AuthenticationToken.fromJson(await queryApi('account', 'json', 'authenticate', extraTerm: username, method: ApiMethods.post, body: password));
  }

  /// Returns the [User] associated with the provided [authToken]
  Future<User> getLoggedInUser(
    String authToken
  ) async {
    return User.fromJson(await queryApi('account', 'json', 'user', authToken: authToken));
  }

  /// Fetches a [List] of [WordList] that belong to the user
  ///
  /// Requires a valid [authToken] from [AuthenticationToken].
  /// You can skip over the first [skip] results, and limit the number
  /// of returned results to [limit].
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

    List<dynamic> wordList = await queryApi('account', 'json', 'wordLists', queryParameters: parameters, authToken: authToken);

    return wordList.map((list) => WordList.fromJson(list)).toList();
  }
}
