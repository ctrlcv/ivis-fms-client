import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fmsclient/view/components/custom_app_bar.dart';
import 'package:fmsclient/view/components/custom_menu_item.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  static const routeName = '/start';

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
            menuText: "Case 01",
            onPressMenu: () {},
          ),
        ],
      ),
    );
  }
}
