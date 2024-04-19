import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmsclient/view/components/custom_app_bar.dart';
import 'package:fmsclient/view/components/custom_menu_item.dart';
import 'package:fmsclient/viewmodel/controller/vehicle_controller.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../model/path_model.dart';
import '../../viewmodel/controller/mqtt_controller.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  static const routeName = '/start';

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Timer? _case01Timer;
  int _case01Index = 0;

  Timer? _case02Timer;
  int _case02Index = 0;

  @override
  void initState() {
    super.initState();

    Get.find<VehicleController>().requestLoadPathFile('assets/json/path01.json');
    Get.find<MqttController>().connect("client01");
  }

  @override
  void dispose() {
    if (_case01Timer != null && _case01Timer!.isActive) {
      _case01Timer!.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "ivis-fms-client",
        showBackButton: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          CustomMenuItem(
            icon: CupertinoIcons.car_detailed,
            menuText:
                "Case 01 ${(_case01Timer != null && _case01Timer!.isActive) ? "stop" : "start"} (${_case01Index + 1}/${kCase01Data.length})",
            onPressMenu: () {
              if (_case01Timer != null && _case01Timer!.isActive) {
                _case01Index = 0;

                if (_case01Timer != null && _case01Timer!.isActive) {
                  _case01Timer!.cancel();
                }

                if (mounted) {
                  setState(() {});
                }
                return;
              }

              _case01Timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
                if (_case01Index >= kCase01Data.length) {
                  _case01Index = 0;

                  if (timer.isActive) {
                    timer.cancel();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                  return;
                }

                debugPrint(kCase01Data[_case01Index]);
                Map<String, dynamic> params = {};
                params['status'] = kCase01Data[_case01Index];

                Get.find<VehicleController>().reqUpdateVehicleStatus(params);

                _case01Index++;

                if (mounted) {
                  setState(() {});
                }
              });

              if (mounted) {
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 8),
          GetBuilder<VehicleController>(
            init: VehicleController(),
            builder: (controller) {
              if (controller.pathList.isEmpty) {
                return Container();
              }

              return CustomMenuItem(
                icon: CupertinoIcons.car_detailed,
                menuText:
                    "Case 02 ${(_case02Timer != null && _case02Timer!.isActive) ? "stop" : "start"} (${_case02Index + 1}/${controller.pathList.length})",
                onPressMenu: () {
                  if (_case02Timer != null && _case02Timer!.isActive) {
                    _case02Index = 0;

                    if (_case02Timer != null && _case02Timer!.isActive) {
                      _case02Timer!.cancel();
                    }

                    if (mounted) {
                      setState(() {});
                    }
                    return;
                  }

                  _case02Timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
                    if (_case02Index >= controller.pathList.length) {
                      _case02Index = 0;

                      if (timer.isActive) {
                        timer.cancel();
                      }
                      if (mounted) {
                        setState(() {});
                      }
                      return;
                    }

                    RoadPath path = controller.pathList[_case02Index];

                    Get.find<MqttController>()
                        .publishMessage("cars/1/vss/Vehicle/CurrentLocation/Latitude", path.latitude.toString());
                    Get.find<MqttController>()
                        .publishMessage("cars/1/vss/Vehicle/CurrentLocation/Longitude", path.longitude.toString());

                    _case02Index++;

                    if (mounted) {
                      setState(() {});
                    }
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
