// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioFile _$AudioFileFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['id']);
  return new AudioFile(json['id'] as int ?? 0,
      attributionText: json['attributionText'] as String,
      attributionUrl: json['attributionUrl'] as String,
      audioType: json['audioType'] as String,
      commentCount: json['commentCount'] as int ?? 0,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num)?.toDouble() ?? 0.0,
      fileUrl: json['fileUrl'] as String,
      voteAverage: (json['voteAverage'] as num)?.toDouble() ?? 0.0,
      voteCount: json['voteCount'] as int ?? 0,
      voteWeightedAverage:
          (json['voteWeightedAverage'] as num)?.toDouble() ?? 0.0,
      word: json['word'] as String);
}

abstract class _$AudioFileSerializerMixin {
  String get attributionText;
  String get attributionUrl;
  String get audioType;
  int get commentCount;
  DateTime get createdAt;
  String get createdBy;
  String get description;
  double get duration;
  String get fileUrl;
  int get id;
  double get voteAverage;
  int get voteCount;
  double get voteWeightedAverage;
  String get word;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'attributionText': attributionText,
        'attributionUrl': attributionUrl,
        'audioType': audioType,
        'commentCount': commentCount,
        'createdAt': createdAt?.toIso8601String(),
        'createdBy': createdBy,
        'description': description,
        'duration': duration,
        'fileUrl': fileUrl,
        'id': id,
        'voteAverage': voteAverage,
        'voteCount': voteCount,
        'voteWeightedAverage': voteWeightedAverage,
        'word': word
      };
}
