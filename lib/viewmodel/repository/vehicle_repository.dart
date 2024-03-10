import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../constants/constants.dart';
import '../../model/common_model.dart';
import 'base_repository.dart';

class VehicleRepository extends BaseRepository {
  final String vehicleStatusUpdatePath = "/api/status/update";

  Future<bool> requestUpdateVehicleStatus(Map<String, dynamic> params) async {
    var url = Uri.http(kApiServer, vehicleStatusUpdatePath);
    String body = jsonEncode(params);

    try {
      final response = await http.post(url, body: body, headers: getHeader());
      return handleResponse(response, (jsonResponse) {
        // debugPrint("requestUpdateVehicleStatus() ${jsonResponse.toString()}");
        CommonResponse commonResponse = CommonResponse.fromJson(jsonResponse);
        if (commonResponse.code != "0000") {
          debugPrint("requestUpdateVehicleStatus() code ${commonResponse.code}");
          return false;
        }

        return true;
      });
    } catch (e) {
      debugPrint("[Exception] requestUpdateVehicleStatus() ${e.toString()}");
      return false;
    }
  }
}
