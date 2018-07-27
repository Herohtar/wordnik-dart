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

Map<String, dynamic> _$BigramToJson(Bigram instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('gram1', instance.gram1);
  writeNotNull('gram2', instance.gram2);
  writeNotNull('mi', instance.mi);
  writeNotNull('wlmi', instance.wlmi);
  return val;
}
