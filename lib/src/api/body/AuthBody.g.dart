// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AuthBody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthBody _$AuthBodyFromJson(Map<String, dynamic> json) {
  return AuthBody(
    login: json['login'] as String,
    password: json['password'] as String,
    imei: json['imei'] as String,
    phone_info: json['phone_info'] as String,
  );
}

Map<String, dynamic> _$AuthBodyToJson(AuthBody instance) => <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'imei': instance.imei,
      'phone_info': instance.phone_info,
    };
