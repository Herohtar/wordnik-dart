import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/scored_word.dart';

part 'sentence.g.dart';

@JsonSerializable()
class Sentence extends Object with _$SentenceSerializerMixin {
  final String display;

  @JsonKey(defaultValue: 0)
  final int documentMetadataId;

  @JsonKey(defaultValue: false)
  final bool hasScoredWords;

  @JsonKey(defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: 0)
  final int rating;

  @JsonKey(defaultValue: <ScoredWord>[])
  final List<ScoredWord> scoredWords;

  Sentence(
    {
      this.display,
      this.documentMetadataId = 0,
      this.hasScoredWords = false,
      this.id = 0,
      this.rating = 0,
      List<ScoredWord> scoredWords
    }
  )
  : this.scoredWords = scoredWords ?? <ScoredWord>[];

  factory Sentence.fromJson(Map<String, dynamic> json) => _$SentenceFromJson(json);
}
