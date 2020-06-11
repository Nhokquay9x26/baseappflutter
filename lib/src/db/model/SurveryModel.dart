import 'package:json_annotation/json_annotation.dart';

part 'SurveryModel.g.dart';

@JsonSerializable()
class SurveryModel {
  int question_id;
  String question_str;
  List<SurveryAnswerModel> answer_list;

  SurveryModel({this.question_id, this.question_str, this.answer_list});

  factory SurveryModel.fromJson(Map<String, dynamic> json) =>
      _$SurveryModelFromJson(json);

  Map<String, dynamic> toJson() => _$SurveryModelToJson(this);
}

@JsonSerializable()
class SurveryAnswerModel {
  int answer_id;
  String answer_str;

  SurveryAnswerModel({this.answer_id, this.answer_str});

  factory SurveryAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$SurveryAnswerModelFromJson(json);

  Map<String, dynamic> toJson() => _$SurveryAnswerModelToJson(this);
}
