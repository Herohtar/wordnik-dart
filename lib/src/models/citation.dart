import 'package:json_annotation/json_annotation.dart';

part 'citation.g.dart';

@JsonSerializable(includeIfNull: false)
class Citation {
  final String cite;

  final String source;

  Citation(
    {
      this.cite,
      this.source
    }
  );

  factory Citation.fromJson(Map<String, dynamic> json) => _$CitationFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$CitationToJson(this);
}
