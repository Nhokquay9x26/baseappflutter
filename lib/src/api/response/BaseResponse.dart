import 'package:base/src/api/response/Meta.dart';

class BaseResponse<T> {
  final Meta meta;
  final T data;

  BaseResponse(this.meta, this.data);

  BaseResponse.formJson(Map<String, dynamic> json)
      : meta = json['meta'],
        data = _dataFromJson(json['data'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() => {
        'meta': meta,
        'data': _dataToJson(data),
      };
}

T _dataFromJson<T>(Map<String, dynamic> input) => input['data'] as T;

Map<String, dynamic> _dataToJson<T>(T input) => {'data': input};
