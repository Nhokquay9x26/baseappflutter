import 'package:base/src/api/ApiRequest.dart';
import 'package:base/src/api/response/Meta.dart';
import 'package:base/src/db/model/AuthModel.dart';

class ApiService {
  static Future<Meta> login(AuthModel body,
      {Function onError, Function onSuccess}) async {
    ApiRequest().postApi(
        url: "login",
        body: body,
        success: (data) {
          print("data 2"+data);
         return onSuccess(data);
        },
        error: (error) {
         return onError(error);
        });
    return null;
  }

  static Future<Meta> validateOTP(AuthModel body,
      {Function onError, Function onSuccess}) async {
    ApiRequest().postApi(
        url: "login",
        body: body,
        success: (data) {
          print("data 2"+data);
          return onSuccess(data);
        },
        error: (error) {
          return onError(error);
        });
    return null;
  }
}
