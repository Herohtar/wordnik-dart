// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentence.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sentence _$SentenceFromJson(Map<String, dynamic> json) {
  return new Sentence(
      display: json['display'] as String,
      documentMetadataId: json['documentMetadataId'] as int ?? 0,
      hasScoredWords: json['hasScoredWords'] as bool ?? false,
      id: json['id'] as int ?? 0,
      rating: json['rating'] as int ?? 0,
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
  Map<String, dynamic> toJson() => <String, dynamic>{
        'display': display,
        'documentMetadataId': documentMetadataId,
        'hasScoredWords': hasScoredWords,
        'id': id,
        'rating': rating,
        'scoredWords': scoredWords
      };
}
