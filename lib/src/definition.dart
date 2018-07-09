import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/citation.dart';
import 'package:wordnik/src/example_usage.dart';
import 'package:wordnik/src/label.dart';
import 'package:wordnik/src/note.dart';
import 'package:wordnik/src/related.dart';
import 'package:wordnik/src/text_pron.dart';

part 'definition.g.dart';

@JsonSerializable(includeIfNull: false)
class Definition extends Object with _$DefinitionSerializerMixin {
  final String attributionText;

  final String attributionUrl;

  @JsonKey(defaultValue: <Citation>[])
  final List<Citation> citations;

  @JsonKey(defaultValue: <ExampleUsage>[])
  final List<ExampleUsage> exampleUses;

  final String extendedText;

  @JsonKey(defaultValue: <Label>[])
  final List<Label> labels;

  @JsonKey(defaultValue: <Note>[])
  final List<Note> notes;

  final String partOfSpeech;

  @JsonKey(defaultValue: <Related>[])
  final List<Related> relatedWords;

  final double score;

  final String seqString;

  final String sequence;

  final String sourceDictionary;

  final String text;

  @JsonKey(defaultValue: <TextPron>[])
  final List<TextPron> textProns;

  final String word;

  Definition(
    {
      this.attributionText,
      this.attributionUrl,
      List<Citation> citations,
      List<ExampleUsage> exampleUses,
      this.extendedText,
      List<Label> labels,
      List<Note> notes,
      this.partOfSpeech,
      List<Related> relatedWords,
      this.score,
      this.seqString,
      this.sequence,
      this.sourceDictionary,
      this.text,
      List<TextPron> textProns,
      this.word
    }
  )
  : this.citations = citations ?? <Citation>[],
    this.exampleUses = exampleUses ?? <ExampleUsage>[],
    this.labels = labels ?? <Label>[],
    this.notes = notes ?? <Note>[],
    this.relatedWords = relatedWords ?? <Related>[],
    this.textProns = textProns ?? <TextPron>[];

  factory Definition.fromJson(Map<String, dynamic> json) => _$DefinitionFromJson(json);
}
