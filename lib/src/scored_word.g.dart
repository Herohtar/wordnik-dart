// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scored_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScoredWord _$ScoredWordFromJson(Map<String, dynamic> json) {
  return new ScoredWord(
      baseWordScore: (json['baseWordScore'] as num)?.toDouble() ?? 0.0,
      docTermCount: json['docTermCount'] as int ?? 0,
      id: json['id'] as int ?? 0,
      lemma: json['lemma'] as String,
      partOfSpeech: json['partOfSpeech'] as String,
      position: json['position'] as int ?? 0,
      score: (json['score'] as num)?.toDouble() ?? 0.0,
      sentenceId: json['sentenceId'] as int ?? 0,
      stopword: json['stopword'] as bool ?? false,
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
  Map<String, dynamic> toJson() => <String, dynamic>{
        'baseWordScore': baseWordScore,
        'docTermCount': docTermCount,
        'id': id,
        'lemma': lemma,
        'partOfSpeech': partOfSpeech,
        'position': position,
        'score': score,
        'sentenceId': sentenceId,
        'stopword': stopword,
        'word': word,
        'wordType': wordType
      };
}
