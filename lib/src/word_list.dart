import 'package:json_annotation/json_annotation.dart';

part 'word_list.g.dart';

@JsonSerializable()
class WordList extends Object with _$WordListSerializerMixin {
  final DateTime createdAt;

  final String description;

  @JsonKey(defaultValue: 0)
  final int id;

  final DateTime lastActivityAt;

  @JsonKey(required: true, disallowNullValue: true)
  final String name;

  @JsonKey(defaultValue: 0)
  final int numberWordsInList;

  final String permalink;

  @JsonKey(required: true, disallowNullValue: true, defaultValue: 'PRIVATE')
  final String type;

  final DateTime updatedAt;

  @JsonKey(defaultValue: 0)
  final int userId;

  final String username;

  WordList(
    this.name,
    this.type,
    {
      this.createdAt,
      this.description,
      this.id = 0,
      this.lastActivityAt,
      this.numberWordsInList = 0,
      this.permalink,
      this.updatedAt,
      this.userId = 0,
      this.username
    }
  );

  factory WordList.fromJson(Map<String, dynamic> json) => _$WordListFromJson(json);
}
