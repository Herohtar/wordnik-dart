// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'frequency_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequencySummary _$FrequencySummaryFromJson(Map<String, dynamic> json) {
  return new FrequencySummary(
      frequency: (json['frequency'] as List)
              ?.map((e) => e == null
                  ? null
                  : new Frequency.fromJson(e as Map<String, dynamic>))
              ?.toList() ??
          [],
      frequencyString: json['frequencyString'] as String,
      totalCount: json['totalCount'] as int,
      unknownYearCount: json['unknownYearCount'] as int,
      word: json['word'] as String);
}

Map<String, dynamic> _$FrequencySummaryToJson(FrequencySummary instance) {
  var val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('frequency', instance.frequency);
  writeNotNull('frequencyString', instance.frequencyString);
  writeNotNull('totalCount', instance.totalCount);
  writeNotNull('unknownYearCount', instance.unknownYearCount);
  writeNotNull('word', instance.word);
  return val;
}
