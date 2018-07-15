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

abstract class _$SentenceSerializerMixin {
  String get display;
  int get documentMetadataId;
  bool get hasScoredWords;
  int get id;
  int get rating;
  List<ScoredWord> get scoredWords;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('display', display);
    writeNotNull('documentMetadataId', documentMetadataId);
    writeNotNull('hasScoredWords', hasScoredWords);
    writeNotNull('id', id);
    writeNotNull('rating', rating);
    writeNotNull('scoredWords', scoredWords);
    return val;
  }
}
