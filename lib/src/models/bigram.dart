import 'package:json_annotation/json_annotation.dart';

part 'bigram.g.dart';

@JsonSerializable(includeIfNull: false)
class Bigram {
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

  /// Returns this object as a JSON map.
  Map<String, dynamic> toJson() => _$BigramToJson(this);
}
