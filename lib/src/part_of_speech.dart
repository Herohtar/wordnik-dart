import 'dart:convert';

import 'package:wordnik/src/category.dart';
import 'package:wordnik/src/root.dart';

class PartOfSpeech {
  final List<Root> roots;
  final List<String> storageAbbr;
  final List<Category> allCategories;

  PartOfSpeech.fromMap(Map<String, dynamic> map)
  : roots = map['roots']?.map((root) => Root.fromMap(root)) ?? <Root>[],
    storageAbbr = List<String>.from(map['storageAbbr'] ?? <String>[]),
    allCategories = map['allCategories']?.map((category) => Category.fromMap(category))?.toList() ?? <Category>[];

  factory PartOfSpeech.fromJson(String jsonString) {
    return PartOfSpeech.fromMap(json.decode(jsonString));
  }
}
