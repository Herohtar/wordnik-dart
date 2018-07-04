import 'dart:convert';

class Bigram {
  final int count;
  final String gram1;
  final String gram2;
  final double mi;
  final double wlmi;

  Bigram.fromMap(Map<String, dynamic> map)
  : count = map['count'] ?? 0,
    gram1 = map['gram1'],
    gram2 = map['gram2'],
    mi = (map['mi'] ?? 0).toDouble(),
    wlmi = (map['wlmi'] ?? 0).toDouble();

  factory Bigram.fromJson(String jsonString) {
    return Bigram.fromMap(json.decode(jsonString));
  }
}
