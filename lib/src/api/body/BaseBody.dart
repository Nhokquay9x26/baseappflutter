class BaseBody<T> {
  final T params;

  BaseBody({this.params});

  factory BaseBody.fromJson(Map<String, dynamic> json) =>
      _$BaseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BaseBodyToJson(this);
}

BaseBody<T> _$BaseBodyFromJson<T>(Map<String, dynamic> json) {
  return BaseBody<T>(
      params: _dataFromJson(json['params'] as Map<String, dynamic>));
}

Map<String, dynamic> _$BaseBodyToJson<T>(BaseBody<T> instance) =>
    <String, dynamic>{
      'data': instance.params,
    };

T _dataFromJson<T>(Map<String, dynamic> input) => input['params'] as T;

Map<String, dynamic> _dataToJson<T>(T input) => {'params': input};
