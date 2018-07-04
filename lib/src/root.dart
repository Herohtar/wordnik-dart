import 'dart:convert';

import 'package:wordnik/src/category.dart';

class Root {
  final List<Category> categories;
  final int id; // TODO: required
  final String name;

  Root.fromMap(Map<String, dynamic> map)
  : categories = map['categories']?.map<Category>((category) => Category.fromMap(category))?.toList() ?? <Category>[],
    id = map['id'] ?? 0,
    name = map['name'];

  factory Root.fromJson(String jsonString) {
    return Root.fromMap(json.decode(jsonString));
  }
}
