import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/casino_spin_win_celebration_controller.dart';

class CasinoSpinWinCelebrationScreen
    extends GetWidget<CasinoSpinWinCelebrationController> {
  CasinoSpinWinCelebrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              height: 1132.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: appTheme.blackCustom.withAlpha(153),
            ),

            // Background Effects
            Positioned(
              top: 190.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img1375x374,
                height: 375.h,
                width: 374.h,
              ),
            ),

            Positioned(
              top: 135.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgA1,
                height: 341.h,
                width: 339.h,
              ),
            ),

            Positioned(
              top: 191.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img1,
                height: 375.h,
                width: 375.h,
              ),
            ),

            // Money Stack and Effects
            Positioned(
              top: 165.h,
              left: 56.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .img2809afbfd6b37f6257baf7463926b9714bea98f71a594yasl3w1,
                height: 250.h,
                width: 262.h,
              ),
            ),

            Positioned(
              top: 145.h,
              left: 20.h,
              child: CustomImageView(
                imagePath: ImageConstant.img1332x333,
                height: 332.h,
                width: 333.h,
              ),
            ),

            Positioned(
              top: 200.h,
              left: 114.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                height: 175.h,
                width: 175.h,
              ),
            ),

            Positioned(
              top: 224.h,
              left: 82.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                height: 175.h,
                width: 175.h,
              ),
            ),

            // Win Announcement
            Positioned(
              top: 407.h,
              left: 99.h,
              child: Obx(() => Text(
                    controller.casinoSpinWinCelebrationModel.value?.winText
                            ?.value ??
                        'YOU\'VE WON!',
                    style: TextStyleHelper.instance.headline24Black
                        .copyWith(color: appTheme.colorFFFFE1, height: 1.21),
                  )),
            ),

            // Prize Amount
            Positioned(
              top: 437.h,
              left: 98.h,
              child: Obx(() => Text(
                    controller.casinoSpinWinCelebrationModel.value?.prizeAmount
                            ?.value ??
                        '+₱ 1.232',
                    style: TextStyleHelper.instance.display40Bold
                        .copyWith(height: 1.2),
                  )),
            ),

            // Claim Button
            Positioned(
              top: 504.h,
              left: 24.h,
              child: Obx(() => CustomGradientButton(
                    text: controller.getCountdownButtonText(),
                    onPressed: controller.isButtonEnabled.value
                        ? () => controller.claimWinnings()
                        : null,
                    width: 327.h,
                    height: 40.h,
                    borderRadius: 20.h,
                    gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
                    textStyle: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom),
                    isEnabled: controller.isButtonEnabled.value,
                  )),
            ),

            // Confirmation Text
            Positioned(
              top: 551.h,
              left: 41.h,
              child: Obx(() => Text(
                    controller.casinoSpinWinCelebrationModel.value
                            ?.confirmationText?.value ??
                        'The amount has been deposited into your account.',
                    style: TextStyleHelper.instance.body12Medium
                        .copyWith(height: 1.25),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
