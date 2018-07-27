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

Map<String, dynamic> _$ScoredWordToJson(ScoredWord instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('baseWordScore', instance.baseWordScore);
  writeNotNull('docTermCount', instance.docTermCount);
  writeNotNull('id', instance.id);
  writeNotNull('lemma', instance.lemma);
  writeNotNull('partOfSpeech', instance.partOfSpeech);
  writeNotNull('position', instance.position);
  writeNotNull('score', instance.score);
  writeNotNull('sentenceId', instance.sentenceId);
  writeNotNull('stopword', instance.stopword);
  writeNotNull('word', instance.word);
  writeNotNull('wordType', instance.wordType);
  return val;
}
