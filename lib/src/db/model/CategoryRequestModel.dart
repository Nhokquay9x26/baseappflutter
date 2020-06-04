import 'package:base/src/constant/Constant.dart';

class CategoryRequestModel {
  String name;
  String description;
  TYPE_CATEGORY_REQUEST type;

  CategoryRequestModel(this.name, this.description, this.type);
}