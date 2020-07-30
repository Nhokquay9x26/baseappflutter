// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_out_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInOutBody _$CheckInOutBodyFromJson(Map<String, dynamic> json) {
  return CheckInOutBody(
    lat: (json['lat'] as num)?.toDouble(),
    long: (json['long'] as num)?.toDouble(),
    check_in_id: json['check_in_id'] as int,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$CheckInOutBodyToJson(CheckInOutBody instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
      'check_in_id': instance.check_in_id,
      'image': instance.image,
    };
