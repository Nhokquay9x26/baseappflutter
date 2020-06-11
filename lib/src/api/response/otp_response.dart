import 'package:json_annotation/json_annotation.dart';

import 'Meta.dart';

part 'otp_response.g.dart';

@JsonSerializable()
class OTPRes{
  Meta meta;
  OTPResponse data;

  OTPRes({this.meta, this.data});

  factory OTPRes.fromJson(Map<String, dynamic> json) =>
      _$OTPResFromJson(json);

  Map<String, dynamic> toJson() => _$OTPResToJson(this);
}

@JsonSerializable()
class OTPResponse {
  String otp;

  OTPResponse({this.otp});

  factory OTPResponse.fromJson(Map<String, dynamic> json) =>
      _$OTPResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OTPResponseToJson(this);
}
