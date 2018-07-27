import 'package:json_annotation/json_annotation.dart';

import 'package:wordnik/src/models/frequency.dart';

part 'frequency_summary.g.dart';

@JsonSerializable(includeIfNull: false)
class FrequencySummary {
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

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$FrequencySummaryToJson(this);
}
