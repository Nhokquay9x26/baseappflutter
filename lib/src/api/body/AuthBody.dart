import 'package:json_annotation/json_annotation.dart';

part 'AuthBody.g.dart';

@JsonSerializable()
class AuthBody {
  String login;
  String password;
  String imei;
  String phone_info;

  AuthBody({this.login, this.password, this.imei, this.phone_info});

  factory AuthBody.fromJson(Map<String, dynamic> json) =>
      _$AuthBodyFromJson(json);

  Map<String, dynamic> toJson() => _$AuthBodyToJson(this);
}
