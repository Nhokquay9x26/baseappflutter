// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRes _$AuthResFromJson(Map<String, dynamic> json) {
  return AuthRes(
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : AuthResponse.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AuthResToJson(AuthRes instance) => <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return AuthResponse(
    token: json['token'] as String,
    name: json['name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
    birthday: json['birthday'] as String,
    holiday_used: (json['holiday_used'] as num)?.toDouble(),
    holiday_total: (json['holiday_total'] as num)?.toDouble(),
    kpi_achieve: json['kpi_achieve'] as int,
    kpi_total: json['kpi_total'] as int,
    correct_answer: json['correct_answer'] as int,
    total_answer: json['total_answer'] as int,
    point: json['point'] as int,
  );
}

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'token': instance.token,
      'phone': instance.phone,
      'email': instance.email,
      'birthday': instance.birthday,
      'holiday_used': instance.holiday_used,
      'holiday_total': instance.holiday_total,
      'kpi_achieve': instance.kpi_achieve,
      'kpi_total': instance.kpi_total,
      'correct_answer': instance.correct_answer,
      'total_answer': instance.total_answer,
      'point': instance.point,
    };
