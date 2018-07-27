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

Map<String, dynamic> _$DefinitionToJson(Definition instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attributionText', instance.attributionText);
  writeNotNull('attributionUrl', instance.attributionUrl);
  writeNotNull('citations', instance.citations);
  writeNotNull('exampleUses', instance.exampleUses);
  writeNotNull('extendedText', instance.extendedText);
  writeNotNull('labels', instance.labels);
  writeNotNull('notes', instance.notes);
  writeNotNull('partOfSpeech', instance.partOfSpeech);
  writeNotNull('relatedWords', instance.relatedWords);
  writeNotNull('score', instance.score);
  writeNotNull('seqString', instance.seqString);
  writeNotNull('sequence', instance.sequence);
  writeNotNull('sourceDictionary', instance.sourceDictionary);
  writeNotNull('text', instance.text);
  writeNotNull('textProns', instance.textProns);
  writeNotNull('word', instance.word);
  return val;
}
