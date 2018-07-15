import 'package:json_annotation/json_annotation.dart';

part 'text_pron.g.dart';

@JsonSerializable(includeIfNull: false)
class TextPron extends Object with _$TextPronSerializerMixin {
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
}
