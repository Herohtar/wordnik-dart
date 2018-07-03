import 'dart:convert';

import 'package:wordnik/src/citation.dart';
import 'package:wordnik/src/example_usage.dart';
import 'package:wordnik/src/label.dart';
import 'package:wordnik/src/note.dart';
import 'package:wordnik/src/related.dart';
import 'package:wordnik/src/text_pron.dart';

class Definition {
  final String attributionText;
  final String attributionUrl;
  final List<Citation> citations;
  final List<ExampleUsage> exampleUses;
  final String extendedText;
  final List<Label> labels;
  final List<Note> notes;
  final String partOfSpeech;
  final List<Related> relatedWords;
  final double score;
  final String seqString;
  final String sequence;
  final String sourceDictionary;
  final String text;
  final List<TextPron> textProns;
  final String word;

  Definition.fromMap(Map<String, dynamic> map)
  : attributionText = map['attributionText'],
    attributionUrl = map['attributionUrl'],
    citations = map['citations']?.map((citation) => Citation.fromMap(citation))?.toList() ?? <Citation>[],
    exampleUses = map['exampleUses']?.map((example) => ExampleUsage.fromMap(example))?.toList() ?? <ExampleUsage>[],
    extendedText = map['extendedText'],
    labels = map['labels']?.map((label) => Label.fromMap(label))?.toList() ?? <Label>[],
    notes = map['notes']?.map((note) => Note.fromMap(note))?.toList() ?? <Note>[],
    partOfSpeech = map['partOfSpeech'],
    relatedWords = map['relatedWords']?.map((word) => Related.fromMap(word))?.toList() ?? <Related>[],
    score = map['score'] ?? 0,
    seqString = map['seqString'],
    sequence = map['sequence'],
    sourceDictionary = map['sourceDictionary'],
    text = map['text'],
    textProns = map['textProns']?.map((text) => TextPron.fromMap(text))?.toList() ?? <TextPron>[],
    word = map['word'];
  
  factory Definition.fromJson(String jsonString) {
    return Definition.fromMap(json.decode(jsonString));
  }
}