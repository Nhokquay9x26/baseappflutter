import 'dart:async';

import 'package:base/mainProvider.dart';
import 'package:base/src/api/response/CheckInOutModel.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class CheckInOutViewModel extends ChangeNotifier {
  BuildContext context;
  int page = 1;
  List<CheckInOutModel> items = [
    CheckInOutModel("05/2020", 1, 2, 4),
    CheckInOutModel("06/2020", 1, 12, 8),
    CheckInOutModel("07/2020", 1, 21, 2),
    CheckInOutModel("08/2020", 11, 2, 4),
    CheckInOutModel("09/2020", 10, 0, 4),
  ];
  bool isLoading = false;
  double zoom = 14.4746;
  GoogleMapController mapController;
  CameraPosition currentLocation;
  Set<Marker> markers = {};

  CheckInOutViewModel(this.context);

  void initialise() {
    final mainProvider = Provider.of<MainProvider>(context);
    currentLocation = CameraPosition(
      target: LatLng(mainProvider.latitude, mainProvider.longitude),
      zoom: zoom,
    );
    markers.add(Marker(
      markerId: MarkerId("My Location"),
      position: LatLng(mainProvider.latitude, mainProvider.longitude),
    ));
  }

  Future loadData() async {}
}
