import 'package:get/get.dart';

import '../repository/vehicle_repository.dart';

class VehicleController extends GetxController {
  Future<void> reqUpdateVehicleStatus(Map<String, dynamic> params) async {
    await VehicleRepository().requestUpdateVehicleStatus(params);
  }
}
