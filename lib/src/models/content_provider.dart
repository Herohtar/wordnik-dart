import 'package:json_annotation/json_annotation.dart';

part 'content_provider.g.dart';

@JsonSerializable(includeIfNull: false)
class ContentProvider {
  final int id;

  final String name;

  ContentProvider(
    {
      this.id,
      this.name
    }
  );

  factory ContentProvider.fromJson(Map<String, dynamic> json) => _$ContentProviderFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$ContentProviderToJson(this);
}
