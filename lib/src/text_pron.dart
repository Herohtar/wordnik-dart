import 'package:json_annotation/json_annotation.dart';

part 'text_pron.g.dart';

@JsonSerializable()
class TextPron extends Object with _$TextPronSerializerMixin {
  final String raw;

  final String rawType;

  @JsonKey(defaultValue: 0)
  final int seq;

  TextPron(
    {
      this.raw,
      this.rawType,
      this.seq = 0
    }
  );

  factory TextPron.fromJson(Map<String, dynamic> json) => _$TextPronFromJson(json);
}
