import 'package:base/src/api/response/Meta.dart';

class BaseResponse<T> {
  final Meta meta;
  final T data;

  BaseResponse({this.meta, this.data});

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) {
  return BaseResponse<T>(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: _dataFromJson(json['data'] as Map<String, dynamic>)
  );
}

Map<String, dynamic> _$BaseResponseToJson<T>(BaseResponse<T> instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'data': instance.data,
    };

T _dataFromJson<T>(Map<String, dynamic> input) => input['data'] as T;

Map<String, dynamic> _dataToJson<T>(T input) => {'data': input};
