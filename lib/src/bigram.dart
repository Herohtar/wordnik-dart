import 'dart:convert';

class Bigram {
  final int count;
  final String gram1;
  final String gram2;
  final double wlmi;
  final double mi;

  Bigram.fromMap(Map<String, dynamic> map)
  : count = map['count'] ?? 0,
    gram1 = map['gram1'],
    gram2 = map['gram2'],
    wlmi = map['wlmi'] ?? 0,
    mi = map['mi'] ?? 0;
  
  factory Bigram.fromJson(String jsonString) {
    return Bigram.fromMap(json.decode(jsonString));
  }
}