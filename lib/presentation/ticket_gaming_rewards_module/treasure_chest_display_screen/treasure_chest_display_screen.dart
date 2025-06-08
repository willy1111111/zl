import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/treasure_chest_display_controller.dart';

class TreasureChestDisplayScreen
    extends GetWidget<TreasureChestDisplayController> {
  TreasureChestDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFFFFFF,
      body: Container(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            Positioned(
              left: 70.h,
              top: 303.h,
              child: CustomImageView(
                imagePath: ImageConstant.img111,
                height: 217.h,
                width: 235.h,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
