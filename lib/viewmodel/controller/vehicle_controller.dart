import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/path_model.dart';
import '../repository/vehicle_repository.dart';

class VehicleController extends GetxController {
  List<RoadPath> _pathList = [];

  get pathList => _pathList;

  ////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////

  Future<void> reqUpdateVehicleStatus(Map<String, dynamic> params) async {
    await VehicleRepository().requestUpdateVehicleStatus(params);
  }

  Future<List<RoadPath>> requestLoadPathFile(String filePath) async {
    Map<String, dynamic> pathData = await VehicleRepository().requestLoadJsonFromAssets(filePath);

    if (pathData.isEmpty) {
      return [];
    }

    List<dynamic> paths = pathData["route"]["trafast"][0]["path"];
    _pathList = paths.map((e) => RoadPath.fromJson(e)).toList();
    debugPrint("result $_pathList");

    update();

    return _pathList;
  }
}
