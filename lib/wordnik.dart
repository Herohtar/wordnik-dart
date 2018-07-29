import 'package:wordnik/src/api_client.dart';
import 'package:wordnik/src/apis/account_apis.dart';
import 'package:wordnik/src/apis/word_apis.dart';
import 'package:wordnik/src/apis/word_list_apis.dart';
import 'package:wordnik/src/apis/word_lists_apis.dart';
import 'package:wordnik/src/apis/words_apis.dart';

export 'package:wordnik/src/enums.dart';
export 'package:wordnik/src/models/api_exception.dart';
export 'package:wordnik/src/models/api_key_status.dart';
export 'package:wordnik/src/models/audio_file.dart';
export 'package:wordnik/src/models/authentication_token.dart';
export 'package:wordnik/src/models/bigram.dart';
export 'package:wordnik/src/models/category.dart';
export 'package:wordnik/src/models/citation.dart';
export 'package:wordnik/src/models/content_provider.dart';
export 'package:wordnik/src/models/definition_search_results.dart';
export 'package:wordnik/src/models/definition.dart';
export 'package:wordnik/src/models/example_search_results.dart';
export 'package:wordnik/src/models/example_usage.dart';
export 'package:wordnik/src/models/example.dart';
export 'package:wordnik/src/models/facet_value.dart';
export 'package:wordnik/src/models/facet.dart';
export 'package:wordnik/src/models/frequency_summary.dart';
export 'package:wordnik/src/models/frequency.dart';
export 'package:wordnik/src/models/label.dart';
export 'package:wordnik/src/models/note.dart';
export 'package:wordnik/src/models/part_of_speech.dart';
export 'package:wordnik/src/models/part_of_speech_options.dart';
export 'package:wordnik/src/models/related.dart';
export 'package:wordnik/src/models/root.dart';
export 'package:wordnik/src/models/scored_word.dart';
export 'package:wordnik/src/models/sentence.dart';
export 'package:wordnik/src/models/simple_definition.dart';
export 'package:wordnik/src/models/simple_example.dart';
export 'package:wordnik/src/models/syllable.dart';
export 'package:wordnik/src/models/text_pron.dart';
export 'package:wordnik/src/models/user.dart';
export 'package:wordnik/src/models/word_list_word.dart';
export 'package:wordnik/src/models/word_list.dart';
export 'package:wordnik/src/models/word_object.dart';
export 'package:wordnik/src/models/word_of_the_day.dart';
export 'package:wordnik/src/models/word_search_result.dart';
export 'package:wordnik/src/models/word_search_results.dart';

/// Contains the public-facing elements of the API library.
class Wordnik extends ApiClient
    with AccountApis, WordListApis, WordListsApis, WordApis, WordsApis {
  /// Constructs a new [Wordnik] API object with the specified [apiKey].
  Wordnik(String apiKey) : super(apiKey);
}
