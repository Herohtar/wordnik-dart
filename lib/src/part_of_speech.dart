import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/category.dart';
import 'package:wordnik/src/root.dart';

part 'part_of_speech.g.dart';

@JsonSerializable(includeIfNull: false)
class PartOfSpeech extends Object with _$PartOfSpeechSerializerMixin {
  @JsonKey(defaultValue: <Category>[])
  final List<Category> allCategories;

  @JsonKey(defaultValue: <Root>[])
  final List<Root> roots;

  @JsonKey(defaultValue: <String>[])
  final List<String> storageAbbr;

  PartOfSpeech(
    {
      List<Category> allCategories,
      List<Root> roots,
      List<String> storageAbbr
    }
  )
  : this.allCategories = allCategories ?? <Category>[],
    this.roots = roots ?? <Root>[],
    this.storageAbbr = storageAbbr ?? <String>[];

  factory PartOfSpeech.fromJson(Map<String, dynamic> json) => _$PartOfSpeechFromJson(json);
}
