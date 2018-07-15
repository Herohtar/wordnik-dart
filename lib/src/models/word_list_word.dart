import 'package:json_annotation/json_annotation.dart';

part 'word_list_word.g.dart';

@JsonSerializable(includeIfNull: false)
class WordListWord extends Object with _$WordListWordSerializerMixin {
  final DateTime createdAt;

  @JsonKey(required: true, defaultValue: 0)
  final int id;

  final int numberCommentsOnWord;

  final int numberLists;

  final int userId;

  final String username;

  final String word;

  WordListWord(
    this.id,
    {
      this.createdAt,
      this.numberCommentsOnWord,
      this.numberLists,
      this.userId,
      this.username,
      this.word
    }
  );

  factory WordListWord.fromJson(Map<String, dynamic> json) => _$WordListWordFromJson(json);
}
