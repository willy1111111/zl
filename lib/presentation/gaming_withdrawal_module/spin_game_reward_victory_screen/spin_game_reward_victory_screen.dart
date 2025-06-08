import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/spin_game_reward_victory_controller.dart';

class SpinGameRewardVictoryScreen
    extends GetWidget<SpinGameRewardVictoryController> {
  SpinGameRewardVictoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              height: 1132.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Dark Overlay Container
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  // Spinning Wheel Background
                  Positioned(
                    top: 190.h,
                    left: 0,
                    child: CustomImageView(
                      imagePath: ImageConstant.img1,
                      height: 375.h,
                      width: 375.h,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Main Coin Stack with Animation
                  Positioned(
                    top: 145.h,
                    left: 21.h,
                    child: _buildAnimatedCoinStack(),
                  ),

                  // Secondary Coin Effect with Sparkle Animation
                  Positioned(
                    top: 165.h,
                    left: 57.h,
                    child: _buildSparklingCoinEffect(),
                  ),

                  // Golden Sparkle Effect
                  Positioned(
                    top: 228.h,
                    left: 100.h,
                    child: _buildGoldenSparkleEffect(),
                  ),

                  // Victory Text
                  Positioned(
                    top: 407.h,
                    left: 100.h,
                    child: _buildVictoryText(),
                  ),

                  // Prize Amount
                  Positioned(
                    top: 437.h,
                    left: 99.h,
                    child: _buildPrizeAmount(),
                  ),

                  // Claim Button with Countdown
                  Positioned(
                    top: 504.h,
                    left: 24.h,
                    child: _buildClaimButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedCoinStack() {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: 2),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, -10 * value),
          child: CustomImageView(
            imagePath: ImageConstant.img1332x333,
            height: 332.h,
            width: 333.h,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget _buildSparklingCoinEffect() {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.7, end: 1.0),
      duration: Duration(milliseconds: 1500),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.scale(
            scale: 1.0 + (value - 0.7) * 0.3,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img2809afbfd6b37f6257baf7463926b9714bea98f71a594yasl3w1,
              height: 250.h,
              width: 262.h,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  Widget _buildGoldenSparkleEffect() {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.7, end: 1.0),
      duration: Duration(milliseconds: 1500),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.scale(
            scale: 1.0 + (value - 0.7) * 0.3,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img82d5a47b9a735f33751f91505c89edbe465536af615160ejwlb1,
              height: 155.h,
              width: 175.h,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  Widget _buildVictoryText() {
    return Container(
      width: 175.h,
      height: 33.h,
      child: ShaderMask(
        shaderCallback: (bounds) => LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFfffbe2),
            appTheme.colorFFFFDD,
          ],
        ).createShader(bounds),
        child: Text(
          "YOU'VE WON!",
          style: TextStyleHelper.instance.headline24Black
              .copyWith(height: 1.2, shadows: [
            Shadow(
              offset: Offset(0, 2),
              color: appTheme.colorFFFFEF,
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildPrizeAmount() {
    return Container(
      width: 177.h,
      height: 56.h,
      child: Obx(() => Text(
            controller.spinGameRewardVictoryModel.value?.prizeAmount?.value ??
                '+₱ 1.232',
            style: TextStyleHelper.instance.display40Bold.copyWith(height: 1.2),
          )),
    );
  }

  Widget _buildClaimButton() {
    return Obx(() {
      return TweenAnimationBuilder<double>(
        tween: Tween<double>(
            begin: 1.0, end: controller.isCountingDown.value ? 1.05 : 1.0),
        duration: Duration(milliseconds: 500),
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: CustomGradientButton(
              text: controller.buttonText.value,
              onPressed: controller.handleClaimButtonTap,
              width: 327.h,
              height: 40.h,
              borderRadius: 20.h,
              gradientColors: [
                Color(0xFF76cd00),
                appTheme.colorFF478A,
              ],
              textStyle: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          );
        },
      );
    });
  }
}
