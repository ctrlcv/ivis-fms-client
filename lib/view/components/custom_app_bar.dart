import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title = "",
    this.showBackButton = false,
    this.titleAlignment = Alignment.center,
    this.titleWidget,
    this.elevation = 4.0,
    this.showMenuButton = false,
    this.onPressMenu,
  });

  final String title;
  final bool showBackButton;
  final bool showMenuButton;
  final AlignmentGeometry titleAlignment;
  final Widget? titleWidget;
  final double elevation;
  final GestureTapCallback? onPressMenu;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor: kMainColor,
      leading: showBackButton
          ? GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 50,
                height: 58,
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/images/icons_appbar_back.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          : (showMenuButton)
              ? GestureDetector(
                  onTap: onPressMenu,
                  child: Container(
                    width: 50,
                    height: 58,
                    alignment: Alignment.center,
                    child: const Icon(Icons.menu, size: 24, color: Colors.white),
                  ),
                )
              : const SizedBox(width: 50),
      title: Container(
        alignment: titleAlignment,
        height: 58,
        child: (titleWidget != null)
            ? titleWidget
            : Container(
                height: 58,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    height: 1.7,
                  ),
                ),
              ),
      ),
      actions: const [
        SizedBox(width: 50),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(58);
}
