import 'package:json_annotation/json_annotation.dart';

part 'PhoneBody.g.dart';

@JsonSerializable()
class PhoneBody{
  String phone;

  PhoneBody({this.phone});

  factory PhoneBody.fromJson(Map<String, dynamic> json) => _$PhoneBodyFromJson(json);

  Map<String, dynamic> toJson() => _$PhoneBodyToJson(this);
}