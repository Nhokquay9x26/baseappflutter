import 'package:base/src/api/body/AuthBody.dart';
import 'package:base/src/api/body/OTPBody.dart';
import 'package:base/src/api/body/check_in_out_body.dart';
import 'package:base/src/api/response/check_in_out_response.dart';
import 'package:base/src/api/response/otp_response.dart';
import 'package:base/src/utils/Locator.dart';
import 'package:base/src/utils/SharePrefs.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';

import 'body/PhoneBody.dart';
import 'response/auth_response.dart';

part 'api_service.g.dart';

const BASE_API_URL = "https://enterprise.mevacon.com.vn/mr/";

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

  @GET('get_check_in')
  Future<CheckInOutResponse> getListCheckIn(
      @Query("date_start") String dateStart);

  @POST('check_in')
  Future<AuthRes> postCheckIn(@Field("params") CheckInOutBody params);

  @POST('check_out')
  Future<AuthRes> postCheckOut(@Field("params") CheckInOutBody params);

  @GET('get_miss_atd')
  Future<AuthRes> getListMissAt();

  @GET('get_leave_allocation')
  Future<AuthRes> getLeaveAllocation();

  @GET('get_leave_request')
  Future<AuthRes> getLeaveRequest(
      @Query("from_date") String fromDate, @Query("to_date") String toDate);

  @GET('get_leave_type')
  Future<AuthRes> getLeaveType();
}

class Api {
  RestClient client;
  final sharePrefs = locator<SharePrefs>();

  Api() {
    print("token ${sharePrefs.token}");
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
        responseHeader: true, requestHeader: true, requestBody: true));
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      options.headers['TOKEN'] = sharePrefs.token;

      return options;
    }, onResponse: (Response response) async {
//          final lang = Locale(sharePrefs.lang);
//      S localization = await S.load(lang);
//      Logger().d(
//          '${response.request.uri.toString()}\n${jsonEncode(response.request.data)}\n ${jsonEncode(response.data['result'])}');
//      print('Result ${response.data['result']}');
//      if (response.request.method == 'GET') {
//        return jsonEncode(response.data['result']);
//      }
      return response.data['result'];
    }, onError: (DioError e) async {
      Logger().e(
          '${e.request.uri.toString()}\n${e.request.data}\n${e.message}\n${e.request.method}');
//      final lang = Locale(sharePrefs.lang);
//      S localization = await S.load(lang);

//      if (e.response == null) {
//        return DioError(
//          request: e.request,
//          response: e.response,
//          type: DioErrorType.CONNECT_TIMEOUT,
////            error: localization.message_miss_connection
//        );
//      }
//
//      return DioError(
//        request: e.request,
//        response: e.response,
//        type: DioErrorType.RESPONSE,
////          error: localization.message_process_failed
//      );
      return e;
    }));

    client = RestClient(dio);
  }
}
