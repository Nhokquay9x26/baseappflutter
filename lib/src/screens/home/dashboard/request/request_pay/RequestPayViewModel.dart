import 'dart:io';

import 'package:base/src/constant/Constant.dart';
import 'package:base/src/db/model/RequestModel.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RequestPayViewModel extends ChangeNotifier {
  String category;
  List<RequestModel> items = [
    RequestModel(1000, categories[0], ""),
    RequestModel(1000, categories[1], ""),
  ];
  File selectFile;

  BuildContext context;

  RequestPayViewModel(this.context);

  void initialise() {
    category = categories[0];
  }

  void setCategory(String category) {
    this.category = category;
  }

  void addRequest() {
    final request = RequestModel(1000, categories[0], "");
    items.add(request);
    notifyListeners();
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    selectFile = image;
    notifyListeners();
  }
}
