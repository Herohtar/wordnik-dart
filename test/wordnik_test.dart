import 'package:test/test.dart';
import 'package:wordnik/wordnik.dart';
import 'package:credentials_helper/credentials_helper.dart';

void main() {
  final Credentials credentials = Credentials.fromFile('credentials.json');
  Wordnik wordnik;
  AuthenticationToken auth;

  group('Initialization Tests', () {
    test('Initialization of Wordnik API object', () {
      Wordnik wordnik = Wordnik(credentials.apiKey);
      expect(wordnik.apiKey, credentials.apiKey);
    });

    test('Invalid API key', () {
      Wordnik wordnik = Wordnik('invalid-api-key');
      expect(
        wordnik.getApiKeyStatus(),
        throwsA(predicate((e) => e is ApiException && e.message == 'unauthorized'))
      );
    });

    test('Valid API key', () {
      Wordnik wordnik = Wordnik(credentials.apiKey);
      expect(
        wordnik.getApiKeyStatus(),
        allOf(completes, completion(predicate<ApiKeyStatus>((auth) => auth.valid)))
      );
    });
  });

  group('Main Test Set', () {
    setUp(() {
      wordnik = Wordnik(credentials.apiKey);
    });

    test('Unsuccessful authentication', () async {
      expect(
        wordnik.authenticate('invalidUsername', 'invalidPassword'),
        throwsA(predicate((e) => e is ApiException && e.message == 'user not found'))
      );
      expect(
        wordnik.authenticate(credentials.username, 'invalidPassword'),
        throwsA(predicate((e) => e is ApiException && e.message == 'Invalid password supplied'))
      );
    });

    test('Successful authentication', () async {
      expect(
        wordnik.authenticate(credentials.username, credentials.password),
        allOf(completes, completion(predicate<AuthenticationToken>((auth) => (auth.token != null) && auth.token.isNotEmpty)))
      );
    });

    group('Operations that require an auth token', () {
      setUp(() async {
        auth = await wordnik.authenticate(credentials.username, credentials.password);
      });

      test('Get user info', () async {
        expect(
          wordnik.getLoggedInUser(auth.token),
          allOf(completes, completion(predicate<User>((user) => user.username == credentials.username)))
        );
      });
    });
  });
}
