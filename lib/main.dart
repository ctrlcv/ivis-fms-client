import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fmsclient/view/pages/start_page.dart';
import 'package:fmsclient/viewmodel/controller/vehicle_controller.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );

  Get.put(VehicleController());

  runApp(const IvisFmsClientApp());
}

class IvisFmsClientApp extends StatelessWidget {
  const IvisFmsClientApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ivis-fms-client',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'medium',
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: (context, child) {
        final MediaQueryData data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      getPages: [
        GetPage(name: StartPage.routeName, page: () => const StartPage()),
      ],
      home: const StartPage(),
    );
  }
}
