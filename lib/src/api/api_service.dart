import 'dart:convert';

import 'package:base/generated/l10n.dart';
import 'package:base/src/api/body/AuthBody.dart';
import 'package:base/src/api/body/OTPBody.dart';
import 'package:base/src/api/response/otp_response.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:base/src/utils/SharePrefs.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

import 'body/PhoneBody.dart';
import 'response/Meta.dart';
import 'response/auth_response.dart';

part 'api_service.g.dart';

//const BASE_API_URL = "http://45.77.32.245:8888/mr/";
const BASE_API_URL = "http://13.76.194.28:8069/mr/";

@RestApi(baseUrl: BASE_API_URL)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST('login')
  Future<OTPRes> postLogin(@Field("params") AuthBody params);

  @POST('validate_token')
  Future<AuthRes> postValidateToken(@Field("params") OTPBody params);

  @POST('validate_phone')
  Future<OTPRes> postValidatePhone(@Field("params") PhoneBody params);

  @POST('validate_pass')
  Future<AuthRes> postValidatePassword(@Field("params") OTPBody params);

  @GET('get_profile')
  Future<AuthRes> getProfile();
}

class Api {
  RestClient client;
  final sharePrefs = locator<SharePrefs>();

  Api() {
    print("token ${sharePrefs.token}");
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      options.headers['Content-Type'] = "application/json";
      options.headers['TOKEN'] = sharePrefs.token;

      return options;
    }, onResponse: (Response response) async {
//      S localization = await S.load(sharePrefs.locale);
      Logger().d(
          '${response.request.uri.toString()}\n${response.request.headers.toString()}\n${jsonEncode(response.request.data)}\n ${response.data['result']}');
      print("Result ${response.data['result']}");
      final result = response.data['result'];
//      if (!meta.status) {
//        return DioError(
//            request: response.request,
//            response: response,
//            type: DioErrorType.CONNECT_TIMEOUT,
//            error: localization.message_miss_connection);
//      }
      return result;
    }, onError: (DioError e) async {
      Logger()
          .e('${e.request.uri.toString()}\n${e.request.data}\n${e.message}');

      S localization = await S.load(sharePrefs.locale);

      if (e.response == null) {
        return DioError(
            request: e.request,
            response: e.response,
            type: DioErrorType.CONNECT_TIMEOUT,
            error: localization.message_miss_connection
        );
      }

      return DioError(
          request: e.request,
          response: e.response,
          type: DioErrorType.RESPONSE,
          error: localization.message_process_failed
      );
    }));

    client = RestClient(dio);
  }
}
