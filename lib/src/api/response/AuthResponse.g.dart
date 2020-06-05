// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AuthResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return AuthResponse(
    token: json['token'] as String,
    otp: json['otp'] as String,
  );
}

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'otp': instance.otp,
    };
