import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/category.dart';

part 'root.g.dart';

@JsonSerializable(includeIfNull: false)
class Root extends Object with _$RootSerializerMixin {
  @JsonKey(defaultValue: <Category>[])
  final List<Category> categories;

  @JsonKey(required: true, defaultValue: 0)
  final int id;

  final String name;

  Root(
    this.id,
    {
      List<Category> categories,
      this.name
    }
  )
  : this.categories = categories ?? <Category>[];

  factory Root.fromJson(Map<String, dynamic> json) => _$RootFromJson(json);
}
