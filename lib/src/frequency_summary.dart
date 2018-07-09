import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/frequency.dart';

part 'frequency_summary.g.dart';

@JsonSerializable(includeIfNull: false)
class FrequencySummary extends Object with _$FrequencySummarySerializerMixin {
  @JsonKey(defaultValue: <Frequency>[])
  final List<Frequency> frequency;

  final String frequencyString;

  final int totalCount;

  final int unknownYearCount;

  final String word;

  FrequencySummary(
    {
      List<Frequency> frequency,
      this.frequencyString,
      this.totalCount,
      this.unknownYearCount,
      this.word
    }
  )
  : this.frequency = frequency ?? <Frequency>[];

  factory FrequencySummary.fromJson(Map<String, dynamic> json) => _$FrequencySummaryFromJson(json);
}
