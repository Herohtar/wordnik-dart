import 'package:json_annotation/json_annotation.dart';

part 'scored_word.g.dart';

@JsonSerializable()
class ScoredWord extends Object with _$ScoredWordSerializerMixin {
  @JsonKey(defaultValue: 0.0)
  final double baseWordScore;

  @JsonKey(defaultValue: 0)
  final int docTermCount;

  @JsonKey(defaultValue: 0)
  final int id;

  final String lemma;

  final String partOfSpeech;

  @JsonKey(defaultValue: 0)
  final int position;

  @JsonKey(defaultValue: 0.0)
  final double score;

  @JsonKey(defaultValue: 0)
  final int sentenceId;

  @JsonKey(defaultValue: false)
  final bool stopword;

  final String word;

  final String wordType;

  ScoredWord(
    {
      this.baseWordScore = 0.0,
      this.docTermCount = 0,
      this.id = 0,
      this.lemma,
      this.partOfSpeech,
      this.position = 0,
      this.score = 0.0,
      this.sentenceId = 0,
      this.stopword = false,
      this.word,
      this.wordType
    }
  );

  factory ScoredWord.fromJson(Map<String, dynamic> json) => _$ScoredWordFromJson(json);
}
