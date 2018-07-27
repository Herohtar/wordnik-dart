import 'package:json_annotation/json_annotation.dart';

part 'text_pron.g.dart';

@JsonSerializable(includeIfNull: false)
class TextPron {
  final String raw;

  final String rawType;

  final int seq;

  TextPron(
    {
      this.raw,
      this.rawType,
      this.seq
    }
  );

  factory TextPron.fromJson(Map<String, dynamic> json) => _$TextPronFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$TextPronToJson(this);
}
