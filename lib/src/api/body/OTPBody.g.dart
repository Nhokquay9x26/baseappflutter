// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OTPBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OTPBody _$OTPBodyFromJson(Map<String, dynamic> json) {
  return OTPBody(
    otp: json['otp'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$OTPBodyToJson(OTPBody instance) => <String, dynamic>{
      'otp': instance.otp,
      'password': instance.password,
    };
