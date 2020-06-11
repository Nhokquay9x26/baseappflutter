import 'package:base/src/db/model/SurveryModel.dart';
import 'package:json_annotation/json_annotation.dart';

import 'Meta.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthRes {
  Meta meta;
  AuthResponse data;

  AuthRes({this.meta, this.data});

  factory AuthRes.fromJson(Map<String, dynamic> json) =>
      _$AuthResFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResToJson(this);
}

@JsonSerializable()
class AuthResponse {
  final String name;
  final String token;
  final String phone;
  final String email;
  final String birthday;
  final double holiday_used;
  final double holiday_total;
  final int kpi_achieve;
  final int kpi_total;
  final int correct_answer;
  final int total_answer;
  final int point;
  final List<SurveryModel> survey_list;

  AuthResponse(
      {this.token,
      this.name,
      this.phone,
      this.email,
      this.birthday,
      this.holiday_used,
      this.holiday_total,
      this.kpi_achieve,
      this.kpi_total,
      this.correct_answer,
      this.total_answer,
      this.point,
      this.survey_list});

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
