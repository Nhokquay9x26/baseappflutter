// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SurveryModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveryModel _$SurveryModelFromJson(Map<String, dynamic> json) {
  return SurveryModel(
    question_id: json['question_id'] as int,
    question_str: json['question_str'] as String,
    answer_list: json['answer_list'] == null
        ? null
        : SurveryAnswerModel.fromJson(
            json['answer_list'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SurveryModelToJson(SurveryModel instance) =>
    <String, dynamic>{
      'question_id': instance.question_id,
      'question_str': instance.question_str,
      'answer_list': instance.answer_list,
    };

SurveryAnswerModel _$SurveryAnswerModelFromJson(Map<String, dynamic> json) {
  return SurveryAnswerModel(
    answer_id: json['answer_id'] as int,
    answer_str: json['answer_str'] as String,
  );
}

Map<String, dynamic> _$SurveryAnswerModelToJson(SurveryAnswerModel instance) =>
    <String, dynamic>{
      'answer_id': instance.answer_id,
      'answer_str': instance.answer_str,
    };
