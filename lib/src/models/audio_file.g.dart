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
      commentCount: json['commentCount'] as int,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String,
      description: json['description'] as String,
      duration: (json['duration'] as num)?.toDouble(),
      fileUrl: json['fileUrl'] as String,
      voteAverage: (json['voteAverage'] as num)?.toDouble(),
      voteCount: json['voteCount'] as int,
      voteWeightedAverage: (json['voteWeightedAverage'] as num)?.toDouble(),
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
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('attributionText', attributionText);
    writeNotNull('attributionUrl', attributionUrl);
    writeNotNull('audioType', audioType);
    writeNotNull('commentCount', commentCount);
    writeNotNull('createdAt', createdAt?.toIso8601String());
    writeNotNull('createdBy', createdBy);
    writeNotNull('description', description);
    writeNotNull('duration', duration);
    writeNotNull('fileUrl', fileUrl);
    writeNotNull('id', id);
    writeNotNull('voteAverage', voteAverage);
    writeNotNull('voteCount', voteCount);
    writeNotNull('voteWeightedAverage', voteWeightedAverage);
    writeNotNull('word', word);
    return val;
  }
}
