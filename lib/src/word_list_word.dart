import 'package:json_annotation/json_annotation.dart';

part 'word_list_word.g.dart';

@JsonSerializable()
class WordListWord extends Object with _$WordListWordSerializerMixin {
  final DateTime createdAt;

  @JsonKey(required: true, defaultValue: 0)
  final int id;

  @JsonKey(defaultValue: 0)
  final int numberCommentsOnWord;

  @JsonKey(defaultValue: 0)
  final int numberLists;

  @JsonKey(defaultValue: 0)
  final int userId;

  final String username;

  final String word;

  WordListWord(
    this.id,
    {
      this.createdAt,
      this.numberCommentsOnWord = 0,
      this.numberLists = 0,
      this.userId = 0,
      this.username,
      this.word
    }
  );

  factory WordListWord.fromJson(Map<String, dynamic> json) => _$WordListWordFromJson(json);
}
