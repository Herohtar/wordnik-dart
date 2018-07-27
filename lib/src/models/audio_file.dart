import 'package:json_annotation/json_annotation.dart';

part 'audio_file.g.dart';

@JsonSerializable(includeIfNull: false)
class AudioFile {
  final String attributionText;

  final String attributionUrl;

  final String audioType;

  final int commentCount;

  final DateTime createdAt;

  final String createdBy;

  final String description;

  final double duration;

  final String fileUrl;

  @JsonKey(required: true, defaultValue: 0)
  final int id;

  final double voteAverage;

  final int voteCount;

  final double voteWeightedAverage;

  final String word;

  AudioFile(
    this.id,
    {
      this.attributionText,
      this.attributionUrl,
      this.audioType,
      this.commentCount,
      this.createdAt,
      this.createdBy,
      this.description,
      this.duration,
      this.fileUrl,
      this.voteAverage,
      this.voteCount,
      this.voteWeightedAverage,
      this.word
    }
  );

  factory AudioFile.fromJson(Map<String, dynamic> json) => _$AudioFileFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$AudioFileToJson(this);
}
