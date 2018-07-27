// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sentence _$SentenceFromJson(Map<String, dynamic> json) {
  return new Sentence(
      display: json['display'] as String,
      documentMetadataId: json['documentMetadataId'] as int,
      hasScoredWords: json['hasScoredWords'] as bool,
      id: json['id'] as int,
      rating: json['rating'] as int,
      scoredWords: (json['scoredWords'] as List)
              ?.map((e) => e == null
                  ? null
                  : new ScoredWord.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          []);
}

Map<String, dynamic> _$SentenceToJson(Sentence instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('display', instance.display);
  writeNotNull('documentMetadataId', instance.documentMetadataId);
  writeNotNull('hasScoredWords', instance.hasScoredWords);
  writeNotNull('id', instance.id);
  writeNotNull('rating', instance.rating);
  writeNotNull('scoredWords', instance.scoredWords);
  return val;
}
