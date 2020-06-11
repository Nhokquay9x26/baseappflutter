import 'package:json_annotation/json_annotation.dart';

part 'ProductModel.g.dart';

@JsonSerializable()
class ProductModel {
  String name;
  String location;

  ProductModel(this.name, this.location);
}