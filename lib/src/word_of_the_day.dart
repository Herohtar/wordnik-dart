import 'dart:convert';

import 'package:wordnik/src/content_provider.dart';
import 'package:wordnik/src/simple_definition.dart';
import 'package:wordnik/src/simple_example.dart';

class WordOfTheDay {
  final String category;
  final ContentProvider contentProvider;
  final DateTime createdAt;
  final String createdBy;
  final List<SimpleDefinition> definitions;
  final List<SimpleExample> examples;
  final String htmlExtra;
  final int id; // TODO: required
  final String note;
  final String parentId;
  final DateTime publishDate;
  final String word;

  WordOfTheDay.fromMap(Map<String, dynamic> map)
  : category = map['category'],
    contentProvider = (map['contentProvider'] == null) ? null : ContentProvider.fromMap(map['contentProvider']),
    createdAt = (map['createdAt'] == null) ? null : DateTime.parse(map['createdAt']),
    createdBy = map['createdBy'],
    definitions = map['definitions']?.map((definition) => SimpleDefinition.fromMap(definition))?.toList() ?? <SimpleDefinition>[],
    examples = map['examples']?.map((example) => SimpleExample.fromMap(example))?.toList() ?? <SimpleExample>[],
    htmlExtra = map['htmlExtra'],
    id = map['id'] ?? 0,
    note = map['note'],
    parentId = map['parentId'],
    publishDate = map['publishDate'],
    word = map['word'];
  
  factory WordOfTheDay.fromJson(String jsonString) {
    return WordOfTheDay.fromMap(json.decode(jsonString));
  }
}