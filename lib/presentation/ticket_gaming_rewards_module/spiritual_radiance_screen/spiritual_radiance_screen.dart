import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spiritual_radiance_controller.dart';

class SpiritualRadianceScreen extends GetWidget<SpiritualRadianceController> {
  SpiritualRadianceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFFFFFF,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: Get.height,
          child: Center(
            child: Container(
              width: 375.h,
              height: 414.h,
              child: Obx(() => AnimatedContainer(
                    duration: Duration(milliseconds: 3000),
                    curve: Curves.easeInOut,
                    transform: Matrix4.identity()
                      ..scale(controller.imageScale.value),
                    child: GestureDetector(
                      onTapDown: (_) => controller.onImageTapDown(),
                      onTapUp: (_) => controller.onImageTapUp(),
                      onTapCancel: () => controller.onImageTapUp(),
                      child: CustomImageView(
                        imagePath: controller.spiritualRadianceModel.value
                                ?.radianceImagePath?.value ??
                            ImageConstant.imgF1,
                        width: 375.h,
                        height: 414.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
