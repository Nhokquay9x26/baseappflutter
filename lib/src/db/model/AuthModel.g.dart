// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AuthModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return AuthModel(
    login: json['login'] as String,
    password: json['password'] as String,
    imei: json['imei'] as String,
    phone_info: json['phone_info'] as String,
  );
}

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'imei': instance.imei,
      'phone_info': instance.phone_info,
    };
