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

abstract class _$FrequencySummarySerializerMixin {
  List<Frequency> get frequency;
  String get frequencyString;
  int get totalCount;
  int get unknownYearCount;
  String get word;
  Map<String, dynamic> toJson() {
    var val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('frequency', frequency);
    writeNotNull('frequencyString', frequencyString);
    writeNotNull('totalCount', totalCount);
    writeNotNull('unknownYearCount', unknownYearCount);
    writeNotNull('word', word);
    return val;
  }
}
