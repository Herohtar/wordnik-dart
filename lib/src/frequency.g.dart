// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Frequency _$FrequencyFromJson(Map<String, dynamic> json) {
  return new Frequency(
      count: json['count'] as int ?? 0, year: json['year'] as int ?? 0);
}

abstract class _$FrequencySerializerMixin {
  int get count;
  int get year;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'count': count, 'year': year};
}
