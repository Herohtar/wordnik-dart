import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable(includeIfNull: false)
class Category {
  @JsonKey(required: true, defaultValue: 0)
  final int id;

  final String name;

  Category(
    this.id,
    {
      this.name
    }
  );

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
