import 'dart:convert';

import 'package:wordnik/src/category.dart';
import 'package:wordnik/src/root.dart';

class PartOfSpeech {
  final List<Category> allCategories;
  final List<Root> roots;
  final List<String> storageAbbr;

  PartOfSpeech.fromMap(Map<String, dynamic> map)
  : allCategories = map['allCategories']?.map((category) => Category.fromMap(category))?.toList() ?? <Category>[],
    roots = map['roots']?.map((root) => Root.fromMap(root)) ?? <Root>[],
    storageAbbr = List<String>.from(map['storageAbbr'] ?? <String>[]);

  factory PartOfSpeech.fromJson(String jsonString) {
    return PartOfSpeech.fromMap(json.decode(jsonString));
  }
}
