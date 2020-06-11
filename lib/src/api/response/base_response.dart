import 'dart:convert';

import 'package:base/src/api/response/Meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse<T> {
  final Meta meta;
  @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson)
  final T data;

  BaseResponse({this.meta, this.data});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson<T>(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

T _dataFromJson<T>(Map<String, dynamic> input) {
  print('value aa $input');
  return input as T;
}

Map<String, dynamic> _dataToJson<T>(T input) => {'data': input};