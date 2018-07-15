import 'package:json_annotation/json_annotation.dart';

part 'content_provider.g.dart';

@JsonSerializable(includeIfNull: false)
class ContentProvider extends Object with _$ContentProviderSerializerMixin {
  final int id;

  final String name;

  ContentProvider(
    {
      this.id,
      this.name
    }
  );

  factory ContentProvider.fromJson(Map<String, dynamic> json) => _$ContentProviderFromJson(json);
}
