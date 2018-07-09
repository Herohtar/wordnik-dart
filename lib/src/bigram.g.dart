// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bigram.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bigram _$BigramFromJson(Map<String, dynamic> json) {
  return new Bigram(
      count: json['count'] as int,
      gram1: json['gram1'] as String,
      gram2: json['gram2'] as String,
      mi: (json['mi'] as num)?.toDouble(),
      wlmi: (json['wlmi'] as num)?.toDouble());
}

abstract class _$BigramSerializerMixin {
  int get count;
  String get gram1;
  String get gram2;
  double get mi;
  double get wlmi;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('count', count);
    writeNotNull('gram1', gram1);
    writeNotNull('gram2', gram2);
    writeNotNull('mi', mi);
    writeNotNull('wlmi', wlmi);
    return val;
  }
}
