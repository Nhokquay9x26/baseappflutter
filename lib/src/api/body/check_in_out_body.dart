
import 'package:json_annotation/json_annotation.dart';

part 'check_in_out_body.g.dart';

@JsonSerializable()
class CheckInOutBody{
  double lat;
  double long;
  int check_in_id;
  String image;

  CheckInOutBody({this.lat, this.long, this.check_in_id, this.image});

  factory CheckInOutBody.fromJson(Map<String, dynamic> json) =>
      _$CheckInOutBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CheckInOutBodyToJson(this);
}