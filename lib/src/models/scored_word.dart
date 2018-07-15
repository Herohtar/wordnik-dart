import 'package:json_annotation/json_annotation.dart';

part 'scored_word.g.dart';

@JsonSerializable(includeIfNull: false)
class ScoredWord extends Object with _$ScoredWordSerializerMixin {
  final double baseWordScore;

  final int docTermCount;

  final int id;

  final String lemma;

  final String partOfSpeech;

  final int position;

  final double score;

  final int sentenceId;

  final bool stopword;

  final String word;

  final String wordType;

  ScoredWord(
    {
      this.baseWordScore,
      this.docTermCount,
      this.id,
      this.lemma,
      this.partOfSpeech,
      this.position,
      this.score,
      this.sentenceId,
      this.stopword,
      this.word,
      this.wordType
    }
  );

  factory ScoredWord.fromJson(Map<String, dynamic> json) => _$ScoredWordFromJson(json);
}
