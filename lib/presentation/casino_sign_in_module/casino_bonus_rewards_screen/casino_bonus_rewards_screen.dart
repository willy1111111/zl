import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/casino_bonus_rewards_controller.dart';
import './widgets/bonus_item_widget.dart';

class CasinoBonusRewardsScreen extends GetWidget<CasinoBonusRewardsController> {
  CasinoBonusRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.maxFinite,
        height: Get.height,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage23,
              height: 1161.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Main Content Container with overlay
            Container(
              width: double.maxFinite,
              height: 894.h,
              decoration: BoxDecoration(
                color: appTheme.blackCustom.withAlpha(128),
              ),
              child: Stack(
                children: [
                  // Background Decorative Images
                  _buildBackgroundDecorations(),

                  // Close Button
                  Positioned(
                    top: 592.h,
                    left: 176.h,
                    child: GestureDetector(
                      onTap: () => controller.onClosePressed(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroupGray900,
                        height: 32.h,
                        width: 32.h,
                      ),
                    ),
                  ),

                  // Congratulations Banner and Elements
                  _buildCongratulationsBanner(),

                  // Bonus Cards List
                  Positioned(
                    top: 242.h,
                    left: 36.h,
                    child: SizedBox(
                      width: 307.h,
                      child: Obx(
                        () => Column(
                          children: List.generate(
                            controller.bonusItems.length,
                            (index) => Padding(
                              padding: EdgeInsets.only(bottom: 16.h),
                              child: BonusItemWidget(
                                bonusItem: controller.bonusItems[index],
                                onClaimPressed: () =>
                                    controller.onClaimBonus(index),
                              ),
                            ),
                          ),
                        ),
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

  /// Builds background decorative images
  Widget _buildBackgroundDecorations() {
    return Stack(
      children: [
        Positioned(
          top: 43.h,
          left: 7.h,
          child: CustomImageView(
            imagePath: ImageConstant.img,
            height: 323.h,
            width: 368.h,
          ),
        ),
        Positioned(
          top: 262.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img362x363,
            height: 362.h,
            width: 363.h,
          ),
        ),
        Positioned(
          top: 85.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img362x375,
            height: 362.h,
            width: 375.h,
          ),
        ),
        Positioned(
          top: 46.h,
          left: 36.h,
          child: CustomImageView(
            imagePath: ImageConstant.img203x313,
            height: 203.h,
            width: 313.h,
          ),
        ),
        Positioned(
          top: 109.h,
          left: 155.h,
          child: CustomImageView(
            imagePath: ImageConstant.img202405201132181,
            height: 77.h,
            width: 80.h,
          ),
        ),
        Positioned(
          top: 332.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img412x375,
            height: 412.h,
            width: 375.h,
          ),
        ),
      ],
    );
  }

  /// Builds congratulations banner with decorative elements
  Widget _buildCongratulationsBanner() {
    return Stack(
      children: [
        // Main congratulations banner
        Positioned(
          top: 204.h,
          left: 17.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup14240,
            height: 350.h,
            width: 341.h,
          ),
        ),

        // Confetti decorations
        Positioned(
          top: 177.h,
          left: 32.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector9,
            height: 50.h,
            width: 70.h,
          ),
        ),
        Positioned(
          top: 211.h,
          left: 67.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon21,
            height: 10.h,
            width: 34.h,
          ),
        ),
        Positioned(
          top: 177.h,
          left: 284.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector10,
            height: 50.h,
            width: 70.h,
          ),
        ),
        Positioned(
          top: 211.h,
          left: 284.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon22,
            height: 10.h,
            width: 34.h,
          ),
        ),

        // Banner background and text
        Positioned(
          top: 166.h,
          left: 67.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle1274,
            height: 52.h,
            width: 252.h,
          ),
        ),
        Positioned(
          top: 166.h,
          left: 67.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle1275,
            height: 52.h,
            width: 252.h,
          ),
        ),
        Positioned(
          top: 174.h,
          left: 78.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgCongratulations,
            height: 32.h,
            width: 230.h,
          ),
        ),
      ],
    );
  }
}
