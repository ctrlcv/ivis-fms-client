import 'dart:convert';

import 'package:http/http.dart' as http;

class BaseRepository {
  Map<String, String> getHeader({bool includeToken = true}) {
    Map<String, String> headers = {};

    headers["Content-Type"] = "application/json; charset=utf-8";

    // if (includeToken) {
    //   String? accessToken = Get.find<UserController>().accessToken;
    //
    //   if (accessToken != null && accessToken.isNotEmpty) {
    //     headers['x-access-token'] = accessToken;
    //   }
    // }

    // debugPrint("header $headers");

    return headers;
  }

  dynamic handleResponse(http.Response response, dynamic Function(dynamic) function) {
    if (response.statusCode != 200) {
      throw Exception('statusCode ${response.statusCode} ${response.body}');
    }

    // if (response.body == "msg : failed because of not authorized request") {
    //   Get.find<UserController>().logout();
    //   Get.offAllNamed(LoginPage.routeName);
    //   throw Exception("token expired");
    // }

    dynamic jsonResponse;

    try {
      jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    } catch (exception) {
      throw Exception(exception.toString());
    }

    if (jsonResponse == null) {
      throw Exception("jsonResponse is null");
    }

    return function(jsonResponse);
  }
}
