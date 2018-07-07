import 'package:json_annotation/json_annotation.dart';

part 'label.g.dart';

@JsonSerializable()
class Label extends Object with _$LabelSerializerMixin {
  final String text;

  final String type;

  Label(
    {
      this.text,
      this.type
    }
  );

  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);
}
