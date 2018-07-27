import 'package:json_annotation/json_annotation.dart';

part 'label.g.dart';

@JsonSerializable(includeIfNull: false)
class Label {
  final String text;

  final String type;

  Label(
    {
      this.text,
      this.type
    }
  );

  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$LabelToJson(this);
}
