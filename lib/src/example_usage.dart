import 'package:json_annotation/json_annotation.dart';

part 'example_usage.g.dart';

@JsonSerializable(includeIfNull: false)
class ExampleUsage extends Object with _$ExampleUsageSerializerMixin {
  final String text;

  ExampleUsage(
    {
      this.text
    }
  );

  factory ExampleUsage.fromJson(Map<String, dynamic> json) => _$ExampleUsageFromJson(json);
}
