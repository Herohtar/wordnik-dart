import 'package:json_annotation/json_annotation.dart';

part 'word_object.g.dart';

@JsonSerializable(includeIfNull: false)
class WordObject {
  final String canonicalForm;

  @JsonKey(required: true, defaultValue: 0)
  final int id;

  final String originalWord;

  @JsonKey(defaultValue: <String>[])
  final List<String> suggestions;

  final String vulgar;

  final String word;

  WordObject(
    this.id,
    {
      this.canonicalForm,
      this.originalWord,
      List<String> suggestions,
      this.vulgar,
      this.word
    }
  )
  : this.suggestions = suggestions ?? <String>[];

  factory WordObject.fromJson(Map<String, dynamic> json) => _$WordObjectFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$WordObjectToJson(this);
}
