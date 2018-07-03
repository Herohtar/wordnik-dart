import 'package:test/test.dart';
import 'package:wordnik/wordnik.dart';

void main() {
  test('checks initialization of wordnik api', () {
    final Wordnik wordnik = Wordnik('api-key');
    expect(wordnik.apiKey, 'api-key');
  });
}
