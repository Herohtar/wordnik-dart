import 'package:json_annotation/json_annotation.dart';

part 'audio_type.g.dart';

@JsonSerializable(includeIfNull: false)
class AudioType {
  final int id;

  final String name;

  AudioType(
    {
      this.id,
      this.name
    }
  );

  factory AudioType.fromJson(Map<String, dynamic> json) => _$AudioTypeFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$AudioTypeToJson(this);
}
