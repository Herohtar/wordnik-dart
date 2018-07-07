import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/frequency.dart';

part 'frequency_summary.g.dart';

@JsonSerializable()
class FrequencySummary extends Object with _$FrequencySummarySerializerMixin {
  @JsonKey(defaultValue: <Frequency>[])
  final List<Frequency> frequency;

  final String frequencyString;

  @JsonKey(defaultValue: 0)
  final int totalCount;

  @JsonKey(defaultValue: 0)
  final int unknownYearCount;

  final String word;

  FrequencySummary(
    {
      List<Frequency> frequency,
      this.frequencyString,
      this.totalCount = 0,
      this.unknownYearCount = 0,
      this.word
    }
  )
  : this.frequency = frequency ?? <Frequency>[];

  factory FrequencySummary.fromJson(Map<String, dynamic> json) => _$FrequencySummaryFromJson(json);
}
