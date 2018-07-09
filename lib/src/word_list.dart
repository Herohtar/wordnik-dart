import 'package:json_annotation/json_annotation.dart';

part 'word_list.g.dart';

@JsonSerializable(includeIfNull: false)
class WordList extends Object with _$WordListSerializerMixin {
  final DateTime createdAt;

  final String description;

  final int id;

  final DateTime lastActivityAt;

  @JsonKey(required: true, disallowNullValue: true)
  final String name;

  final int numberWordsInList;

  final String permalink;

  @JsonKey(required: true, disallowNullValue: true)
  final String type;

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
}
