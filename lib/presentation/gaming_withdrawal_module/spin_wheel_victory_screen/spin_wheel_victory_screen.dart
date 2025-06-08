import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_wheel_victory_controller.dart';

class SpinWheelVictoryScreen extends GetWidget<SpinWheelVictoryController> {
  const SpinWheelVictoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteCustom,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1137,
                width: double.infinity,
                height: 1132.h,
                fit: BoxFit.cover,
              ),
            ),
            // Dark Overlay Frame
            Positioned.fill(
              child: Container(
                color: appTheme.blackCustom,
                child: Stack(
                  children: [
                    // Main Wheel Background
                    Positioned(
                      top: 191.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.img1,
                        width: 375.h,
                        height: 375.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Secondary Wheel Layer
                    Positioned(
                      top: 59.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.img2,
                        width: 375.h,
                        height: 375.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Wheel Frame
                    Positioned(
                      top: 145.h,
                      left: 21.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.img1332x333,
                        width: 333.h,
                        height: 332.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Main Wheel with Animation
                    Positioned(
                      top: 165.h,
                      left: 57.h,
                      child: Obx(() => AnimatedScale(
                            scale: controller.wheelScale.value,
                            duration: Duration(milliseconds: 1000),
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .img2809afbfd6b37f6257baf7463926b9714bea98f71a594yasl3w1,
                              width: 262.h,
                              height: 250.h,
                              fit: BoxFit.cover,
                            ),
                          )),
                    ),
                    // Center Wheel Element
                    Positioned(
                      top: 220.h,
                      left: 107.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage867,
                        width: 162.h,
                        height: 164.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Victory Text
                    Positioned(
                      top: 407.h,
                      left: 100.h,
                      child: Container(
                        width: 175.h,
                        height: 33.h,
                        child: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFFFFBE2),
                              appTheme.colorFFFFDD,
                            ],
                          ).createShader(bounds),
                          child: Text(
                            "YOU'VE WON!",
                            style: TextStyleHelper.instance.headline24Black
                                .copyWith(height: 1.2, shadows: [
                              Shadow(
                                offset: Offset(0, 2.h),
                                color: appTheme.colorFFFFEF,
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    // Prize Text
                    Positioned(
                      top: 436.h,
                      left: 63.h,
                      child: Container(
                        width: 248.h,
                        height: 56.h,
                        child: Text(
                          '1 Time Draw',
                          style: TextStyleHelper.instance.display40BoldSFProText
                              .copyWith(height: 1.2),
                        ),
                      ),
                    ),
                    // Claim Button
                    Positioned(
                      top: 504.h,
                      left: 24.h,
                      child: Obx(() => CustomGradientButton(
                            text: controller.buttonText.value,
                            width: 327.h,
                            height: 40.h,
                            borderRadius: 20.h,
                            gradientColors: [
                              Color(0xFF76CD00),
                              appTheme.colorFF478A,
                            ],
                            textStyle: TextStyleHelper.instance.title16BoldArial
                                .copyWith(height: 1.2),
                            onPressed: () => controller.onClaimPressed(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
