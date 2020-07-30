import 'dart:io';

import 'package:base/src/routers/RouterName.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CaptureCheckInOutViewModel extends ChangeNotifier {
  BuildContext context;
  File selectFile;

  CaptureCheckInOutViewModel(this.context);

  void initialise() {}

  void next() {
    Navigator.pushNamed(context, RouterName.survery);
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    selectFile = image;
    notifyListeners();
  }
}