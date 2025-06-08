import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_game_victory_controller.dart';

class SpinGameVictoryScreen extends GetWidget<SpinGameVictoryController> {
  SpinGameVictoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1137,
                width: 375.h,
                height: 1132.h,
                fit: BoxFit.cover,
              ),
            ),

            // Dark Overlay Frame
            Container(
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  // Background Effect Image 1
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

                  // Background Effect Image 2 with sparkle animation
                  Positioned(
                    top: 59.h,
                    left: 0,
                    child: AnimatedOpacity(
                      opacity: controller.sparkleOpacity.value,
                      duration: Duration(seconds: 1),
                      child: CustomImageView(
                        imagePath: ImageConstant.img2,
                        width: 375.h,
                        height: 375.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  // Treasure Chest Base
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

                  // Golden Coins Pile with bounce animation
                  Positioned(
                    top: 165.h,
                    left: 57.h,
                    child: Obx(() => AnimatedContainer(
                          duration: Duration(milliseconds: 750),
                          transform: Matrix4.translationValues(
                              0, controller.coinBounceOffset.value, 0),
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .img2809afbfd6b37f6257baf7463926b9714bea98f71a594yasl3w1,
                            width: 262.h,
                            height: 250.h,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),

                  // Treasure Chest Lid
                  Positioned(
                    top: 211.h,
                    left: 51.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img1195x278,
                      width: 278.h,
                      height: 195.h,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Sparkle Effects
                  Positioned(
                    top: 208.h,
                    left: 56.h,
                    child: Obx(() => AnimatedOpacity(
                          opacity: controller.sparkleOpacity.value,
                          duration: Duration(seconds: 1),
                          child: AnimatedScale(
                            scale: controller.sparkleScale.value,
                            duration: Duration(seconds: 1),
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgDebe4586dd1e44a98f4ed3feee9ebc9cc353e7e1b290fnspfcwfw120011,
                              width: 263.h,
                              height: 187.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),

                  // Victory Text
                  Positioned(
                    top: 407.h,
                    left: 100.h,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFFBE2), Color(0xFFFFDD79)],
                        ),
                      ),
                      child: Text(
                        'YOU\'VE WON!',
                        style: TextStyleHelper.instance.headline24Black
                            .copyWith(
                                color: appTheme.colorFFFFEF,
                                height: 1.21,
                                shadows: [
                              Shadow(
                                offset: Offset(0, 2.h),
                                color: appTheme.colorFFFFEF,
                              ),
                            ]),
                      ),
                    ),
                  ),

                  // Prize Amount
                  Positioned(
                    top: 441.h,
                    left: 94.h,
                    child: Text(
                      '+₱ 2,000',
                      style: TextStyleHelper.instance.display40Bold
                          .copyWith(height: 1.2),
                    ),
                  ),

                  // Claim Button
                  Positioned(
                    top: 504.h,
                    left: 27.h,
                    child: Obx(() => CustomGradientButton(
                          text: controller.buttonText.value,
                          onPressed: () => controller.claimPrize(),
                          width: 327.h,
                          height: 40.h,
                          borderRadius: 20.h,
                          gradientColors: [
                            Color(0xFF76CD00),
                            Color(0xFF478A03)
                          ],
                          textStyle: TextStyleHelper.instance.title16Bold
                              .copyWith(color: appTheme.whiteCustom),
                        )),
                  ),

                  // Confirmation Text
                  Positioned(
                    top: 551.h,
                    left: 41.h,
                    child: SizedBox(
                      width: 294.h,
                      child: Text(
                        'The amount has been deposited into your account.',
                        style: TextStyleHelper.instance.body12Medium
                            .copyWith(height: 1.25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
