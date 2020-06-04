import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MainProvider extends ChangeNotifier {
  String username = "AAA";
  double latitude;
  double longitude;

  void initialise() {
    Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((position) {
      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    }).catchError((onError) {
      print("Error " + onError.toString());
    });
  }
}
