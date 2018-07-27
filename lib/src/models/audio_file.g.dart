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

Map<String, dynamic> _$AudioFileToJson(AudioFile instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attributionText', instance.attributionText);
  writeNotNull('attributionUrl', instance.attributionUrl);
  writeNotNull('audioType', instance.audioType);
  writeNotNull('commentCount', instance.commentCount);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('description', instance.description);
  writeNotNull('duration', instance.duration);
  writeNotNull('fileUrl', instance.fileUrl);
  writeNotNull('id', instance.id);
  writeNotNull('voteAverage', instance.voteAverage);
  writeNotNull('voteCount', instance.voteCount);
  writeNotNull('voteWeightedAverage', instance.voteWeightedAverage);
  writeNotNull('word', instance.word);
  return val;
}
