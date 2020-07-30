// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_out_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInOutRes _$CheckInOutResFromJson(Map<String, dynamic> json) {
  return CheckInOutRes(
    meta: json['meta'] == null
        ? null
        : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : CheckInOutResponse.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CheckInOutResToJson(CheckInOutRes instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

CheckInOutResponse _$CheckInOutResponseFromJson(Map<String, dynamic> json) {
  return CheckInOutResponse(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$CheckInOutResponseToJson(CheckInOutResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
