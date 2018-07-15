import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/scored_word.dart';

part 'sentence.g.dart';

@JsonSerializable(includeIfNull: false)
class Sentence extends Object with _$SentenceSerializerMixin {
  final String display;

  final int documentMetadataId;

  final bool hasScoredWords;

  final int id;

  final int rating;

  @JsonKey(defaultValue: <ScoredWord>[])
  final List<ScoredWord> scoredWords;

  Sentence(
    {
      this.display,
      this.documentMetadataId,
      this.hasScoredWords,
      this.id,
      this.rating,
      List<ScoredWord> scoredWords
    }
  )
  : this.scoredWords = scoredWords ?? <ScoredWord>[];

  factory Sentence.fromJson(Map<String, dynamic> json) => _$SentenceFromJson(json);
}
