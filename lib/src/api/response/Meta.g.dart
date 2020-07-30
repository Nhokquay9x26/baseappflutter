// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    status: json['status'] as bool,
    message: json['message'] as String,
    status_code: json['status_code'] as int,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'status_code': instance.status_code,
    };
