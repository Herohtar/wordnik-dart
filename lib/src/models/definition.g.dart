// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Definition _$DefinitionFromJson(Map<String, dynamic> json) {
  return new Definition(
      attributionText: json['attributionText'] as String,
      attributionUrl: json['attributionUrl'] as String,
      citations: (json['citations'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Citation.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      exampleUses: (json['exampleUses'] as List)
              ?.map((e) => e == null
                  ? null
                  : new ExampleUsage.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      extendedText: json['extendedText'] as String,
      labels: (json['labels'] as List)?.map((e) => e == null ? null : new Label.fromJson(e as Map<String, dynamic>))?.toList() ??
          [],
      notes: (json['notes'] as List)?.map((e) => e == null ? null : new Note.fromJson(e as Map<String, dynamic>))?.toList() ??
          [],
      partOfSpeech: json['partOfSpeech'] as String,
      relatedWords: (json['relatedWords'] as List)
              ?.map((e) => e == null ? null : new Related.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      score: (json['score'] as num)?.toDouble(),
      seqString: json['seqString'] as String,
      sequence: json['sequence'] as String,
      sourceDictionary: json['sourceDictionary'] as String,
      text: json['text'] as String,
      textProns: (json['textProns'] as List)?.map((e) => e == null ? null : new TextPron.fromJson(e as Map<String, dynamic>))?.toList() ?? [],
      word: json['word'] as String);
}

abstract class _$DefinitionSerializerMixin {
  String get attributionText;
  String get attributionUrl;
  List<Citation> get citations;
  List<ExampleUsage> get exampleUses;
  String get extendedText;
  List<Label> get labels;
  List<Note> get notes;
  String get partOfSpeech;
  List<Related> get relatedWords;
  double get score;
  String get seqString;
  String get sequence;
  String get sourceDictionary;
  String get text;
  List<TextPron> get textProns;
  String get word;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('attributionText', attributionText);
    writeNotNull('attributionUrl', attributionUrl);
    writeNotNull('citations', citations);
    writeNotNull('exampleUses', exampleUses);
    writeNotNull('extendedText', extendedText);
    writeNotNull('labels', labels);
    writeNotNull('notes', notes);
    writeNotNull('partOfSpeech', partOfSpeech);
    writeNotNull('relatedWords', relatedWords);
    writeNotNull('score', score);
    writeNotNull('seqString', seqString);
    writeNotNull('sequence', sequence);
    writeNotNull('sourceDictionary', sourceDictionary);
    writeNotNull('text', text);
    writeNotNull('textProns', textProns);
    writeNotNull('word', word);
    return val;
  }
}
