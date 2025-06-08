import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_rewards_congratulations_controller.dart';
import './widgets/bonus_card_widget.dart';

class GamingRewardsCongratulationsScreen
    extends GetWidget<GamingRewardsCongratulationsController> {
  const GamingRewardsCongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Container(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage23,
              width: 375.h,
              height: 1161.h,
              fit: BoxFit.cover,
            ),

            // Black Overlay Frame
            Container(
              width: 375.h,
              height: 894.h,
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  _buildBackgroundImages(),
                  _buildCelebrationElements(),
                  _buildCongratulationsBanner(),
                  _buildDecorativeElements(),
                  _buildBonusCardsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImages() {
    return Stack(
      children: [
        Positioned(
          top: 43.h,
          left: 7.h,
          child: CustomImageView(
            imagePath: ImageConstant.img,
            width: 368.h,
            height: 323.h,
          ),
        ),
        Positioned(
          top: 262.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img362x363,
            width: 363.h,
            height: 362.h,
          ),
        ),
        Positioned(
          top: 85.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img362x375,
            width: 375.h,
            height: 362.h,
          ),
        ),
        Positioned(
          top: 46.h,
          left: 36.h,
          child: CustomImageView(
            imagePath: ImageConstant.img203x313,
            width: 313.h,
            height: 203.h,
          ),
        ),
        Positioned(
          top: 109.h,
          left: 155.h,
          child: CustomImageView(
            imagePath: ImageConstant.img202405201132181,
            width: 80.h,
            height: 77.h,
          ),
        ),
        Positioned(
          top: 332.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img412x375,
            width: 375.h,
            height: 412.h,
          ),
        ),
      ],
    );
  }

  Widget _buildCelebrationElements() {
    return Positioned(
      top: 204.h,
      left: 17.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup14240,
        width: 341.h,
        height: 350.h,
      ),
    );
  }

  Widget _buildCongratulationsBanner() {
    return Positioned(
      top: 166.h,
      left: 67.h,
      child: Container(
        width: 252.h,
        height: 52.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1274,
              width: 252.h,
              height: 52.h,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1275,
              width: 252.h,
              height: 52.h,
            ),
            Positioned(
              top: 8.h,
              left: 11.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgCongratulations,
                width: 230.h,
                height: 32.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDecorativeElements() {
    return Stack(
      children: [
        Positioned(
          top: 177.h,
          left: 32.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector9,
            width: 70.h,
            height: 50.h,
          ),
        ),
        Positioned(
          top: 211.h,
          left: 67.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon21,
            width: 34.h,
            height: 10.h,
          ),
        ),
        Positioned(
          top: 177.h,
          left: 284.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector10,
            width: 70.h,
            height: 50.h,
          ),
        ),
        Positioned(
          top: 211.h,
          left: 284.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon22,
            width: 34.h,
            height: 10.h,
          ),
        ),
      ],
    );
  }

  Widget _buildBonusCardsList() {
    return Obx(() => Column(
          children: [
            SizedBox(height: 242.h),
            ...List.generate(
              controller.bonusCards.length,
              (index) => Padding(
                padding: EdgeInsets.only(
                  left: 36.h,
                  bottom: index < controller.bonusCards.length - 1 ? 22.h : 0,
                ),
                child: BonusCardWidget(
                  bonusCard: controller.bonusCards[index],
                  onButtonTap: () => controller.onBonusAction(index),
                ),
              ),
            ),
          ],
        ));
  }
}
