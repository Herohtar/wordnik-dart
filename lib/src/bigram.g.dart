// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bigram.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bigram _$BigramFromJson(Map<String, dynamic> json) {
  return new Bigram(
      count: json['count'] as int ?? 0,
      gram1: json['gram1'] as String,
      gram2: json['gram2'] as String,
      mi: (json['mi'] as num)?.toDouble() ?? 0.0,
      wlmi: (json['wlmi'] as num)?.toDouble() ?? 0.0);
}

abstract class _$BigramSerializerMixin {
  int get count;
  String get gram1;
  String get gram2;
  double get mi;
  double get wlmi;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'count': count,
        'gram1': gram1,
        'gram2': gram2,
        'mi': mi,
        'wlmi': wlmi
      };
}
