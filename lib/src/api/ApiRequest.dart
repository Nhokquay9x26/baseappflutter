import 'dart:convert';

import 'package:base/src/api/response/Meta.dart';
import 'package:http/http.dart' as http;

const BASE_API_URL = "http://45.77.32.245:8888/mr/";

enum METHOD { GET, POST, PUT, DELETE }

class ApiRequest {
  String _token;

  Map<String, String> headers = {"Content-Type": "application/json"};

  Future<Map<String, String>> getApi({body, url, success, error}) async {
    final response = await http.get(url, headers: headers);
    return handleResult(response);
  }

  Future postApi({body, url, success, error}) async {
    print("params : " + jsonEncode({"params": body}));
    final response = await http.post(BASE_API_URL + url,
        headers: headers, body: jsonEncode({"params": body}));
    return handleResult(response);
  }

  Future handleResult(response) {
    print("response 11 " + response.statusCode.toString());
    if (response.statusCode == 200) {
      try {
        final json = jsonDecode(response.body);
        final result = json['result'];
        final meta = Meta.formJson(result['meta']);
        if (meta.status) {
          print("data " + result['data'].toString());
          return result['data'];
        } else {
          handleError(meta);
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      print("Something get wrong! Status code ${response.statusCode}");
    }
    return null;
  }

  void handleDataResponse(res) {}

  void handleError(Meta meta) {
    print("Error message " + meta.message);
    print("Error code " + meta.status_code.toString());
  }
}
