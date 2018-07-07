import 'package:json_annotation/json_annotation.dart';

part 'citation.g.dart';

@JsonSerializable()
class Citation extends Object with _$CitationSerializerMixin {
  final String cite;

  final String source;

  Citation(
    {
      this.cite,
      this.source
    }
  );

  factory Citation.fromJson(Map<String, dynamic> json) => _$CitationFromJson(json);
}
