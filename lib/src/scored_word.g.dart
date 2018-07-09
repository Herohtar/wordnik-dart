// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scored_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoredWord _$ScoredWordFromJson(Map<String, dynamic> json) {
  return new ScoredWord(
      baseWordScore: (json['baseWordScore'] as num)?.toDouble(),
      docTermCount: json['docTermCount'] as int,
      id: json['id'] as int,
      lemma: json['lemma'] as String,
      partOfSpeech: json['partOfSpeech'] as String,
      position: json['position'] as int,
      score: (json['score'] as num)?.toDouble(),
      sentenceId: json['sentenceId'] as int,
      stopword: json['stopword'] as bool,
      word: json['word'] as String,
      wordType: json['wordType'] as String);
}

abstract class _$ScoredWordSerializerMixin {
  double get baseWordScore;
  int get docTermCount;
  int get id;
  String get lemma;
  String get partOfSpeech;
  int get position;
  double get score;
  int get sentenceId;
  bool get stopword;
  String get word;
  String get wordType;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('baseWordScore', baseWordScore);
    writeNotNull('docTermCount', docTermCount);
    writeNotNull('id', id);
    writeNotNull('lemma', lemma);
    writeNotNull('partOfSpeech', partOfSpeech);
    writeNotNull('position', position);
    writeNotNull('score', score);
    writeNotNull('sentenceId', sentenceId);
    writeNotNull('stopword', stopword);
    writeNotNull('word', word);
    writeNotNull('wordType', wordType);
    return val;
  }
}
