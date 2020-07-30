// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPRes _$OTPResFromJson(Map<String, dynamic> json) {
  return OTPRes(
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : OTPResponse.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OTPResToJson(OTPRes instance) => <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

OTPResponse _$OTPResponseFromJson(Map<String, dynamic> json) {
  return OTPResponse(
    otp: json['otp'] as String,
  );
}

Map<String, dynamic> _$OTPResponseToJson(OTPResponse instance) =>
    <String, dynamic>{
      'otp': instance.otp,
    };
