// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) {
  return new ApiException(json['type'] as String, json['message'] as String);
}

abstract class _$ApiExceptionSerializerMixin {
  String get type;
  String get message;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'type': type, 'message': message};
}
