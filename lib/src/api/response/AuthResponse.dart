import 'package:json_annotation/json_annotation.dart';

part 'AuthResponse.g.dart';

@JsonSerializable()
class AuthResponse {
  final String token;
  final String otp;

  AuthResponse({this.token, this.otp});

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
