import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/jbet88_benefits_promotion_controller.dart';

class Jbet88BenefitsPromotionScreen
    extends GetWidget<Jbet88BenefitsPromotionController> {
  const Jbet88BenefitsPromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 480.h,
        height: 513.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.35, -0.94),
            end: Alignment(-0.35, 0.94),
            colors: [
              Color(0xFF3D0001),
              appTheme.colorFFD930,
              appTheme.colorFFFFEE,
            ],
          ),
        ),
        child: Stack(
          children: [
            _buildBackgroundImage(),
            _buildCharacterImage(),
            _buildMainGamingElements(),
            _buildSideGamingElement(),
            _buildCentralGamingDisplay(),
            _buildSocialMediaIcon(),
            _buildGamingIcons(),
            _buildWhatsAppIcon(),
            _buildFacebookIcon(),
            _buildSlotMachine(),
            _buildCoins(),
            _buildSlot777Symbol(),
            _buildMainHeading(),
            _buildBenefitsComeText(),
            _buildCallToActionText(),
            _buildBottomGradientOverlay(),
            _buildFloatingActionButton(),
            _buildJoinButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Positioned(
      top: 0,
      left: 0,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1181,
        width: 480.h,
        height: 1115.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildCharacterImage() {
    return Positioned(
      top: 183.h,
      left: 0,
      child: CustomImageView(
        imagePath: ImageConstant
            .imgD5f2b4b394b4e53a892c7beebb2542b427db41d51bb3d4qtetft1330x480,
        width: 480.h,
        height: 330.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildMainGamingElements() {
    return Positioned(
      top: 72.h,
      left: 16.h,
      child: AnimatedBuilder(
        animation: controller.floatingAnimation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, controller.floatingAnimation.value),
            child: CustomImageView(
              imagePath: ImageConstant.imgImage366x447,
              width: 447.h,
              height: 366.h,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSideGamingElement() {
    return Positioned(
      top: 316.h,
      left: 16.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage111x447,
        width: 447.h,
        height: 111.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildCentralGamingDisplay() {
    return Positioned(
      top: 115.h,
      left: 136.h,
      child: AnimatedBuilder(
        animation: controller.pulseAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: controller.pulseAnimation.value,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1176,
              width: 183.h,
              height: 252.h,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSocialMediaIcon() {
    return Positioned(
      top: 142.h,
      left: 78.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgSda1,
        width: 33.h,
        height: 34.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildGamingIcons() {
    return Stack(
      children: [
        Positioned(
          top: 115.h,
          left: 269.h,
          child: CustomImageView(
            imagePath: ImageConstant.img202410251751431,
            width: 53.h,
            height: 50.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 140.h,
          left: 363.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1179,
            width: 35.h,
            height: 36.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 135.h,
          left: 371.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1178,
            width: 35.h,
            height: 36.h,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildWhatsAppIcon() {
    return Positioned(
      top: 101.h,
      left: 355.h,
      child: CustomImageView(
        imagePath: ImageConstant
            .img0ab53a5f627c8361ab972d9a990c7cf913a356332d4d69krzrj173x73,
        width: 73.h,
        height: 73.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildFacebookIcon() {
    return Positioned(
      top: 255.h,
      left: 294.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1177,
        width: 74.h,
        height: 74.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildSlotMachine() {
    return Positioned(
      top: 335.h,
      left: 144.h,
      child: CustomImageView(
        imagePath: ImageConstant
            .img9bdfe0b8724b81256e0517a22d4f45c9d2c1a4731d24f6udcz13,
        width: 184.h,
        height: 65.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildCoins() {
    return Stack(
      children: [
        Positioned(
          top: 157.h,
          left: 15.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value),
                child: CustomImageView(
                  imagePath: ImageConstant.imgJinbi5,
                  width: 58.h,
                  height: 58.h,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 257.h,
          left: 3.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgCabaa843b0d92fa2defe62172cea3ac3985e656e2dcacbzm7ay1,
            width: 73.h,
            height: 64.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 141.h,
          left: 426.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value),
                child: CustomImageView(
                  imagePath: ImageConstant.imgJinbi6,
                  width: 54.h,
                  height: 52.h,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 38.h,
          left: 392.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value),
                child: CustomImageView(
                  imagePath: ImageConstant.imgJinbi101,
                  width: 33.h,
                  height: 38.h,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSlot777Symbol() {
    return Positioned(
      top: 231.h,
      left: 403.h,
      child: AnimatedBuilder(
        animation: controller.pulseAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: controller.pulseAnimation.value,
            child: CustomImageView(
              imagePath: ImageConstant.img7778100x77,
              width: 77.h,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  Widget _buildMainHeading() {
    return Positioned(
      top: 39.h,
      left: 147.h,
      child: SizedBox(
        width: 185.h,
        height: 20.h,
        child: Text(
          'Jbet88 is giving away',
          style: TextStyleHelper.instance.title20ExtraBoldHelveticaNeue
              .copyWith(height: 1.2),
        ),
      ),
    );
  }

  Widget _buildBenefitsComeText() {
    return Positioned(
      top: 60.h,
      left: 150.h,
      child: SizedBox(
        width: 192.h,
        height: 40.h,
        child: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            begin: Alignment(-0.36, -0.93),
            end: Alignment(0.36, 0.93),
            colors: [
              Color(0xFFFFD76),
              appTheme.colorFFFFD8,
              appTheme.colorFFFFEC,
            ],
          ).createShader(bounds),
          child: Text(
            'benefits come',
            style: TextStyleHelper.instance.headline32ExtraBoldHelveticaNeue
                .copyWith(height: 1.22),
          ),
        ),
      ),
    );
  }

  Widget _buildCallToActionText() {
    return Positioned(
      top: 92.h,
      left: 102.h,
      child: SizedBox(
        width: 274.h,
        height: 24.h,
        child: Text(
          'join me and share the 500 cash prize',
          style: TextStyleHelper.instance.title17ExtraBoldHelveticaNeue
              .copyWith(height: 1.24),
        ),
      ),
    );
  }

  Widget _buildBottomGradientOverlay() {
    return Positioned(
      top: 326.h,
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
            stops: [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      bottom: 20.h,
      right: 20.h,
      child: AnimatedBuilder(
        animation: controller.pulseAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: controller.pulseAnimation.value,
            child: GestureDetector(
              onTap: () => controller.onFloatingActionButtonPressed(),
              child: Container(
                width: 60.h,
                height: 60.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFBBF24),
                      appTheme.colorFFF59E,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blackCustom.withAlpha(77),
                      blurRadius: 8.h,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '!',
                    style: TextStyleHelper.instance.title18Bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildJoinButton() {
    return Positioned(
      bottom: 30.h,
      left: 240.h - 60.h,
      child: GestureDetector(
        onTap: () => controller.onJoinButtonPressed(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 12.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF10B981),
                appTheme.colorFF0596,
              ],
            ),
            borderRadius: BorderRadius.circular(25.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom.withAlpha(77),
                blurRadius: 8.h,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
          child: Text(
            'Join Now',
            style: TextStyleHelper.instance.title18Bold,
          ),
        ),
      ),
    );
  }
}
