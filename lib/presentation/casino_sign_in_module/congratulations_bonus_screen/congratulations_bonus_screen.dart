import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/congratulations_bonus_controller.dart';
import './widgets/bonus_card_widget.dart';

class CongratulationsBonusScreen
    extends GetWidget<CongratulationsBonusController> {
  CongratulationsBonusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gaming Interface
          CustomImageView(
            imagePath: ImageConstant.imgImage23,
            height: 1161.h,
            width: 375.h,
            fit: BoxFit.cover,
          ),

          // Dark Overlay
          Container(
            width: double.infinity,
            height: double.infinity,
            color: appTheme.blackCustom.withAlpha(153),
          ),

          // Background Game Elements
          _buildBackgroundElements(),

          // Celebration Decorations
          _buildCelebrationDecorations(),

          // Congratulations Banner
          _buildCongratulationsBanner(),

          // Phone Verification Bonus Card
          Positioned(
            left: 36.h,
            top: 242.h,
            child: Obx(() => BonusCardWidget(
                  bonusCard: controller.phoneVerificationBonus.value!,
                  onButtonPressed: () => controller.verifyPhone(),
                )),
          ),

          // Registration Bonus Card
          Positioned(
            left: 36.h,
            top: 343.h,
            child: Obx(() => BonusCardWidget(
                  bonusCard: controller.registrationBonus.value!,
                  onButtonPressed: () => controller.claimRegistrationBonus(),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundElements() {
    return Stack(
      children: [
        Positioned(
          left: 7.h,
          top: 43.h,
          child: CustomImageView(
            imagePath: ImageConstant.img,
            height: 323.h,
            width: 368.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 192.h,
          child: CustomImageView(
            imagePath: ImageConstant.img362x363,
            height: 362.h,
            width: 363.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 85.h,
          child: CustomImageView(
            imagePath: ImageConstant.img362x375,
            height: 362.h,
            width: 375.h,
          ),
        ),
        Positioned(
          left: 36.h,
          top: 46.h,
          child: CustomImageView(
            imagePath: ImageConstant.img203x313,
            height: 203.h,
            width: 313.h,
          ),
        ),
        Positioned(
          left: 155.h,
          top: 109.h,
          child: CustomImageView(
            imagePath: ImageConstant.img202405201132181,
            height: 77.h,
            width: 80.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 262.h,
          child: CustomImageView(
            imagePath: ImageConstant.img412x375,
            height: 412.h,
            width: 375.h,
          ),
        ),
        Positioned(
          left: 176.h,
          top: 502.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroupGray900,
            height: 32.h,
            width: 32.h,
          ),
        ),
        Positioned(
          left: 17.h,
          top: 204.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup14240,
            height: 248.h,
            width: 341.h,
          ),
        ),
      ],
    );
  }

  Widget _buildCelebrationDecorations() {
    return Stack(
      children: [
        Positioned(
          left: 32.h,
          top: 177.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector9,
            height: 50.h,
            width: 70.h,
          ),
        ),
        Positioned(
          left: 67.h,
          top: 211.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon21,
            height: 10.h,
            width: 34.h,
          ),
        ),
        Positioned(
          left: 284.h,
          top: 177.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector10,
            height: 50.h,
            width: 70.h,
          ),
        ),
        Positioned(
          left: 284.h,
          top: 211.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon22,
            height: 10.h,
            width: 34.h,
          ),
        ),
      ],
    );
  }

  Widget _buildCongratulationsBanner() {
    return Positioned(
      left: 67.h,
      top: 166.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1274,
            height: 52.h,
            width: 252.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1275,
            height: 52.h,
            width: 252.h,
          ),
          Positioned(
            left: 11.h,
            top: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgCongratulations,
              height: 32.h,
              width: 230.h,
            ),
          ),
        ],
      ),
    );
  }
}
