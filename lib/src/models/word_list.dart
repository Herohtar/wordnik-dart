import 'package:json_annotation/json_annotation.dart';

part 'word_list.g.dart';

@JsonSerializable(includeIfNull: false)
class WordList {
  final DateTime createdAt;

  String description;

  final int id;

  final DateTime lastActivityAt;

  @JsonKey(required: true, disallowNullValue: true)
  String name;

  final int numberWordsInList;

  final String permalink;

  @JsonKey(required: true, disallowNullValue: true)
  String type;

  final DateTime updatedAt;

  final int userId;

  final String username;

  WordList(
    this.name,
    this.type,
    {
      this.createdAt,
      this.description,
      this.id,
      this.lastActivityAt,
      this.numberWordsInList,
      this.permalink,
      this.updatedAt,
      this.userId,
      this.username
    }
  );

  factory WordList.fromJson(Map<String, dynamic> json) => _$WordListFromJson(json);

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$WordListToJson(this);
}
