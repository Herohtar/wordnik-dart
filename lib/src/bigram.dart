import 'package:json_annotation/json_annotation.dart';

part 'bigram.g.dart';

@JsonSerializable()
class Bigram extends Object with _$BigramSerializerMixin {
  @JsonKey(defaultValue: 0)
  final int count;

  final String gram1;

  final String gram2;

  @JsonKey(defaultValue: 0.0)
  final double mi;

  @JsonKey(defaultValue: 0.0)
  final double wlmi;

  Bigram(
    {
      this.count = 0,
      this.gram1,
      this.gram2,
      this.mi = 0.0,
      this.wlmi = 0.0
    }
  );

  factory Bigram.fromJson(Map<String, dynamic> json) => _$BigramFromJson(json);
}
