import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/jbet88_referral_rewards_controller.dart';

class Jbet88ReferralRewardsScreen
    extends GetWidget<Jbet88ReferralRewardsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.5, -1.0),
            end: Alignment(1.0, 1.0),
            colors: [
              Color(0xFF00233F),
              appTheme.colorFF03BB,
              appTheme.colorFF00E4,
            ],
          ),
        ),
        child: Stack(
          children: [
            // Background Jungle Scene
            Positioned(
              top: 42.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage425x480,
                width: 480.h,
                height: 425.h,
                fit: BoxFit.cover,
              ),
            ),

            // Main Character Dragon with floating animation
            Positioned(
              top: 145.h,
              left: 195.h,
              child: AnimatedBuilder(
                animation: controller.floatingAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset:
                        Offset(0, controller.floatingAnimation.value * -10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage285x275,
                      width: 285.h,
                      height: 275.h,
                    ),
                  );
                },
              ),
            ),

            // Character Scene
            Positioned(
              top: 163.h,
              left: 36.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage396x246,
                width: 396.h,
                height: 246.h,
              ),
            ),

            // Game Elements
            Positioned(
              top: 133.h,
              left: 144.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1182,
                width: 419.h,
                height: 174.h,
              ),
            ),

            // Side Character with pulse animation
            Positioned(
              top: 200.h,
              left: 20.h,
              child: AnimatedBuilder(
                animation: controller.pulseAnimation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: 1.0 + (controller.pulseAnimation.value * 0.05),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage1183,
                      width: 182.h,
                      height: 182.h,
                    ),
                  );
                },
              ),
            ),

            // Social Media Icons
            Positioned(
              top: 72.h,
              left: 59.h,
              child: GestureDetector(
                onTap: () => controller.onSocialMediaTap('facebook'),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage1177,
                  width: 61.h,
                  height: 61.h,
                ),
              ),
            ),

            Positioned(
              top: 95.h,
              left: 370.h,
              child: GestureDetector(
                onTap: () => controller.onSocialMediaTap('telegram'),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSda1,
                  width: 38.h,
                  height: 39.h,
                ),
              ),
            ),

            // WhatsApp Icon
            Positioned(
              top: 169.h,
              left: 59.h,
              child: GestureDetector(
                onTap: () => controller.onSocialMediaTap('whatsapp'),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup2131330125,
                  width: 49.h,
                  height: 35.h,
                ),
              ),
            ),

            // Decorative Elements
            Positioned(
              top: 163.h,
              left: 387.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1184,
                width: 67.h,
                height: 76.h,
              ),
            ),

            Positioned(
              top: 322.h,
              left: 411.h,
              child: CustomImageView(
                imagePath: ImageConstant.img777676x69,
                width: 69.h,
                height: 76.h,
              ),
            ),

            // Header Text
            Positioned(
              top: 38.h,
              left: 126.h,
              child: SizedBox(
                width: 226.h,
                height: 22.h,
                child: Text(
                  'RECOMMEND Jbet88 TO A FRIEND',
                  style: TextStyleHelper.instance.title16ExtraBold
                      .copyWith(height: 1.25),
                ),
              ),
            ),

            // Main Promotional Text with gradient
            Positioned(
              top: 55.h,
              left: 109.h,
              child: SizedBox(
                width: 260.h,
                height: 30.h,
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment(-0.8, -0.6),
                    end: Alignment(0.8, 0.6),
                    colors: [
                      Color(0xFFFFFD76),
                      appTheme.colorFFFFD8,
                      appTheme.colorFFFFEC,
                    ],
                  ).createShader(bounds),
                  child: Text(
                    'AND EARN 500 PHP A DAY',
                    style: TextStyleHelper.instance.headline24ExtraBold
                        .copyWith(height: 1.21),
                  ),
                ),
              ),
            ),

            // Sub Text
            Positioned(
              top: 85.h,
              left: 120.h,
              child: SizedBox(
                width: 239.h,
                height: 20.h,
                child: Text(
                  'HAVE YOU RECOMMENDED IT TODAY',
                  style: TextStyleHelper.instance.title16ExtraBold
                      .copyWith(height: 1.25),
                ),
              ),
            ),

            // Bottom Call-to-Action Section
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 480.h,
                height: 187.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF25282D),
                      appTheme.colorFF0000,
                      Color(0xFF000000),
                    ],
                  ),
                ),
                child: Positioned(
                  top: 14.h,
                  left: 99.h,
                  child: GestureDetector(
                    onTap: () => controller.onReferralButtonTap(),
                    child: Container(
                      width: 282.h,
                      height: 39.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF00AD,
                        borderRadius: BorderRadius.circular(6.h),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          child: Text(
                            'JBET88 is handing out benefits!\nCome on!\nJoin me in splitting the 500 cash prize',
                            style: TextStyleHelper.instance.body15ExtraBold
                                .copyWith(height: 1.07),
                            textAlign: TextAlign.center,
                          ),
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
    );
  }
}
