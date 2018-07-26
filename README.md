# wordnik

### Wordnik API for Dart

All object models and API calls have been implemented, but with minimal testing. API signatures are likely to change until fully tested.

#### Related:
* Wordnik: <https://www.wordnik.com/>
* Wordnik API: <https://developer.wordnik.com/docs>


## Basic usage
```dart
import 'package:wordnik/wordnik.dart';

void main() async {

  Wordnik wordnik = Wordnik('YOUR_API_KEY');

  WordObject randomWord = await wordnik.getRandomWord(
    includePartOfSpeech: 'verb',
    minLength: 6,
    maxLength: 10
  );

  print(randomWord.word);

}
```
