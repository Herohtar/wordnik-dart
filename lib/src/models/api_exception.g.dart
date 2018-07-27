// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) {
  return new ApiException(json['type'] as String, json['message'] as String);
}

Map<String, dynamic> _$ApiExceptionToJson(ApiException instance) =>
    <String, dynamic>{'type': instance.type, 'message': instance.message};
