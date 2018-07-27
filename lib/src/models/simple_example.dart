import 'package:json_annotation/json_annotation.dart';

part 'simple_example.g.dart';

@JsonSerializable(includeIfNull: false)
class SimpleExample {
  final int id;

  final String text;

  final String title;

  final String url;

  SimpleExample(
    {
      this.id,
      this.text,
      this.title,
      this.url
    }
  );

  factory SimpleExample.fromJson(Map<String, dynamic> json) => _$SimpleExampleFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$SimpleExampleToJson(this);
}
