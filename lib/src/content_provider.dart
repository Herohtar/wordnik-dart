import 'package:json_annotation/json_annotation.dart';

part 'content_provider.g.dart';

@JsonSerializable()
class ContentProvider extends Object with _$ContentProviderSerializerMixin {
  @JsonKey(defaultValue: 0)
  final int id;

  final String name;

  ContentProvider(
    {
      this.id = 0,
      this.name
    }
  );

  factory ContentProvider.fromJson(Map<String, dynamic> json) => _$ContentProviderFromJson(json);
}
