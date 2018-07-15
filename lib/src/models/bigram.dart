import 'package:json_annotation/json_annotation.dart';

part 'bigram.g.dart';

@JsonSerializable(includeIfNull: false)
class Bigram extends Object with _$BigramSerializerMixin {
  final int count;

  final String gram1;

  final String gram2;

  final double mi;

  final double wlmi;

  Bigram(
    {
      this.count,
      this.gram1,
      this.gram2,
      this.mi,
      this.wlmi
    }
  );

  factory Bigram.fromJson(Map<String, dynamic> json) => _$BigramFromJson(json);
}
