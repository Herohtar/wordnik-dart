import 'dart:convert';

class Citation {
  final String cite;
  final String source;

  Citation.fromMap(Map<String, dynamic> map)
  : cite = map['cite'],
    source = map['source'];
  
  factory Citation.fromJson(String jsonString) {
    return Citation.fromMap(json.decode(jsonString));
  }
}