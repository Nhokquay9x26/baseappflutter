import 'dart:io';

import 'package:base/src/api/response/auth_response.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';

import 'main.dart';
import 'src/api/api_service.dart';
import 'src/utils/Locator.dart';
import 'src/utils/SharePrefs.dart';

class MainProvider extends ChangeNotifier {
  double latitude;
  double longitude;
  String deviceid;
  String imei;
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  final sharePrefs = locator<SharePrefs>();
  AuthResponse authResponse;
  Map<String, dynamic> deviceData;
  String token;
  final Api apiService = locator<Api>();

  void initialise() async {
    await initPlatformState();
    initGeolocation();
    token = sharePrefs.token;
    print("token start $token");
    if (token != null) {
      await apiService.client
          .getProfile()
          .then((value) => {
                if (value.meta.status)
                  {
                    authResponse = value.data,
                  }
                else
                  {showLongToast(value.meta.message)}
              })
          .catchError((onError) => {print('error ${onError.toString()}')});
    }
  }

  Future<void> initPlatformState() async {
    try {
      if (Platform.isAndroid) {
        deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      } else if (Platform.isIOS) {
        deviceData = _readIosDeviceInfo(await deviceInfoPlugin.iosInfo);
      }
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.'
      };
    }
    print(deviceData.toString());
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'androidId': build.androidId,
      'systemFeatures': build.systemFeatures,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }

  void initGeolocation() {
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
