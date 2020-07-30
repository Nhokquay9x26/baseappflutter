import 'package:json_annotation/json_annotation.dart';

part 'OTPBody.g.dart';

@JsonSerializable()
class OTPBody{
  String otp;
  String password;

  OTPBody({this.otp, this.password});

  factory OTPBody.fromJson(Map<String, dynamic> json) => _$OTPBodyFromJson(json);

  Map<String, dynamic> toJson() => _$OTPBodyToJson(this);
}