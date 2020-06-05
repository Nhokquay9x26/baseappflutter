import 'dart:convert';

import 'package:base/generated/l10n.dart';
import 'package:base/src/api/body/AuthBody.dart';
import 'package:base/src/api/body/BaseBody.dart';
import 'package:base/src/api/body/OTPBody.dart';
import 'package:base/src/api/config.dart';
import 'package:base/src/api/response/AuthResponse.dart';
import 'package:base/src/api/response/BaseResponse.dart';
import 'package:base/src/db/model/AuthModel.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:base/src/utils/SharePrefs.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

import 'body/PhoneBody.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "http://45.77.32.245:8888/mr/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST('login')
  Future<BaseResponse<AuthResponse>> postLogin(@Field("params") AuthBody params);

  @POST('validate_phone')
  Future<BaseResponse<AuthResponse>> postValidatePhone(@Field("params") PhoneBody params);

  @POST('validate_pass')
  Future<BaseResponse<AuthResponse>> postValidatePassword(@Field("params") OTPBody params);
}

class Api {
  RestClient client;

  Api() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      options.headers['Content-Type'] = "application/json";
      options.headers['Authorization'] = BuildConfig.basicAuth;

      return options;
    }, onResponse: (Response response) async {
      Logger().d(
          '${response.request.uri.toString()}\n${jsonEncode(response.request.data)}\n ${response.data['result']}');

      Logger().d('${jsonEncode(response.data['result'])}');
      return response.data['result'];
    }, onError: (DioError e) async {
      Logger()
          .e('${e.request.uri.toString()}\n${e.request.data}\n${e.message}');

      final sharePrefs = locator<SharePrefs>();
      S localization = await S.load(Locale(sharePrefs.lang));

      if (e.response == null) {
        return DioError(
            request: e.request,
            response: e.response,
            type: DioErrorType.CONNECT_TIMEOUT,
            error: localization.message_miss_connection);
      }

      return DioError(
          request: e.request,
          response: e.response,
          type: DioErrorType.RESPONSE,
          error: localization.message_process_failed);
    }));

    client = RestClient(dio);
  }
}
