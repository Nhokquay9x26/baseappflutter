import 'package:json_annotation/json_annotation.dart';

part 'AuthModel.g.dart';

@JsonSerializable()
class AuthModel {
  String login;
  String password;
  String imei;
  String phone_info;

  AuthModel({this.login, this.password, this.imei, this.phone_info});

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthModelToJson(this);
}
