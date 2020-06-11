// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://13.76.194.28:8069/mr/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  postLogin(params) async {
    ArgumentError.checkNotNull(params, 'params');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'params': params};
    final Response<Map<String, dynamic>> _result = await _dio.request('login',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = OTPRes.fromJson(_result.data);
    return value;
  }

  @override
  postValidateToken(params) async {
    ArgumentError.checkNotNull(params, 'params');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'params': params};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'validate_token',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AuthRes.fromJson(_result.data);
    return value;
  }

  @override
  postValidatePhone(params) async {
    ArgumentError.checkNotNull(params, 'params');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'params': params};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'validate_phone',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = OTPRes.fromJson(_result.data);
    return value;
  }

  @override
  postValidatePassword(params) async {
    ArgumentError.checkNotNull(params, 'params');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = {'params': params};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'validate_pass',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AuthRes.fromJson(_result.data);
    return value;
  }

  @override
  getProfile() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'get_profile',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = AuthRes.fromJson(_result.data);
    return value;
  }
}
