import 'package:json_annotation/json_annotation.dart';

part 'audio_type.g.dart';

@JsonSerializable()
class AudioType extends Object with _$AudioTypeSerializerMixin {
  @JsonKey(defaultValue: 0)
  final int id;

  final String name;

  AudioType(
    {
      this.id = 0,
      this.name
    }
  );

  factory AudioType.fromJson(Map<String, dynamic> json) => _$AudioTypeFromJson(json);
}
