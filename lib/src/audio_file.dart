import 'package:json_annotation/json_annotation.dart';

part 'audio_file.g.dart';

@JsonSerializable()
class AudioFile extends Object with _$AudioFileSerializerMixin {
  final String attributionText;

  final String attributionUrl;

  final String audioType;

  @JsonKey(defaultValue: 0)
  final int commentCount;

  final DateTime createdAt;

  final String createdBy;

  final String description;

  @JsonKey(defaultValue: 0.0)
  final double duration;

  final String fileUrl;

  @JsonKey(required: true, defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: 0.0)
  final double voteAverage;

  @JsonKey(defaultValue: 0)
  final int voteCount;

  @JsonKey(defaultValue: 0.0)
  final double voteWeightedAverage;

  final String word;

  AudioFile(
    this.id,
    {
      this.attributionText,
      this.attributionUrl,
      this.audioType,
      this.commentCount = 0,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration = 0.0,
      this.fileUrl,
      this.voteAverage = 0.0,
      this.voteCount = 0,
      this.voteWeightedAverage = 0.0,
      this.word
    }
  );

  factory AudioFile.fromJson(Map<String, dynamic> json) => _$AudioFileFromJson(json);
}
