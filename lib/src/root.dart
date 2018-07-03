import 'dart:convert';

import 'package:wordnik/src/category.dart';

class Root {
  final int id;
  final String name;
  final List<Category> categories;

  Root.fromMap(Map<String, dynamic> map)
  : id = map['id'] ?? 0,
    name = map['name'],
    categories = map['categories']?.map((category) => Category.fromMap(category))?.toList() ?? <Category>[];

  factory Root.fromJson(String jsonString) {
    return Root.fromMap(json.decode(jsonString));
  }
}
