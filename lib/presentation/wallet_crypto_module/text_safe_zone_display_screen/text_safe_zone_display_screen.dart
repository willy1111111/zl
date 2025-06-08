import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/text_safe_zone_display_controller.dart';

class TextSafeZoneDisplayScreen
    extends GetWidget<TextSafeZoneDisplayController> {
  TextSafeZoneDisplayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 480.h,
        height: 513.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgUnion,
              height: 513.h,
              width: 480.h,
              fit: BoxFit.cover,
            ),

            // Text Safe Zone Content
            Positioned(
              left: 120.h,
              top: 143.h,
              child: Container(
                width: 240.h,
                height: 56.h,
                alignment: Alignment.center,
                child: Obx(() => Text(
                      controller.textSafeZoneDisplayModel.value.displayText
                              ?.value ??
                          '文字安全区间',
                      style: TextStyleHelper
                          .instance.display40ExtraBoldHelveticaNeue
                          .copyWith(height: 1.2),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
