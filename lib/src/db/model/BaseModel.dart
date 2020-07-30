class BaseModel<T> {
  T params;

  BaseModel.formJson(Map<String, dynamic> json)
      : this.params = _dataFromJson(json['params'] as Map<String, dynamic>);

  Map<String, dynamic> toJson() => {
        'params': _dataToJson(this.params),
      };
}

T _dataFromJson<T>(Map<String, dynamic> input) => input['params'] as T;

Map<String, dynamic> _dataToJson<T>(T input) => {'params': input};
