import 'package:json_annotation/json_annotation.dart';

import 'meta.dart';

part 'check_in_out_response.g.dart';

@JsonSerializable()
class CheckInOutRes {
  Meta meta;
  CheckInOutResponse data;

  CheckInOutRes({this.meta, this.data});

  factory CheckInOutRes.fromJson(Map<String, dynamic> json) =>
      _$CheckInOutResFromJson(json);

  Map<String, dynamic> toJson() => _$CheckInOutResToJson(this);
}

@JsonSerializable()
class CheckInOutResponse{

  String name;


  CheckInOutResponse({this.name});

  factory CheckInOutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckInOutResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CheckInOutResponseToJson(this);
}