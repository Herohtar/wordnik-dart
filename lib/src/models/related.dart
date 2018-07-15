import 'package:json_annotation/json_annotation.dart';

part 'related.g.dart';

@JsonSerializable(includeIfNull: false)
class Related extends Object with _$RelatedSerializerMixin {
  final String gram;

  final String label1;

  final String label2;

  final String label3;

  final String label4;

  final String relationshipType;

  @JsonKey(defaultValue: <String>[])
  final List<String> words;

  Related(
    {
      this.gram,
      this.label1,
      this.label2,
      this.label3,
      this.label4,
      this.relationshipType,
      List<String> words
    }
  )
  : this.words = words ?? <String>[];

  factory Related.fromJson(Map<String, dynamic> json) => _$RelatedFromJson(json);
}
