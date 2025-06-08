import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/jbet88_referral_bonus_controller.dart';

class Jbet88ReferralBonusScreen
    extends GetWidget<Jbet88ReferralBonusController> {
  Jbet88ReferralBonusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF00233F),
              appTheme.colorFF03BB,
              appTheme.colorFF00E4,
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SizedBox(
          width: 480.h,
          height: 513.h,
          child: Stack(
            children: [
              _buildBackgroundImage(),
              _buildBottomGradientOverlay(),
              _buildFloatingElements(),
              _buildMainContent(),
            ],
          ),
        ),
      ),
    );
  }

  /// Background casino image
  Widget _buildBackgroundImage() {
    return Positioned(
      top: 0,
      left: 0,
      child: CustomImageView(
        imagePath: ImageConstant.imgBg,
        height: 512.h,
        width: 480.h,
        fit: BoxFit.cover,
      ),
    );
  }

  /// Bottom gradient overlay
  Widget _buildBottomGradientOverlay() {
    return Positioned(
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
            stops: [0.0, 0.5, 1.0],
          ),
        ),
      ),
    );
  }

  /// Floating casino elements with animation
  Widget _buildFloatingElements() {
    return Stack(
      children: [
        // Money elements
        Positioned(
          top: 49.h,
          left: 27.h,
          child: _buildFloatingElement(
            ImageConstant.img36x37,
            37.h,
            36.h,
            0,
          ),
        ),
        Positioned(
          top: 220.h,
          left: 24.h,
          child: _buildFloatingElement(
            ImageConstant.img36x35,
            35.h,
            36.h,
            1500,
          ),
        ),
        Positioned(
          top: 296.h,
          left: 102.h,
          child: _buildFloatingElement(
            ImageConstant.img26x20,
            20.h,
            26.h,
            0,
          ),
        ),
        Positioned(
          top: 309.h,
          left: 334.h,
          child: _buildFloatingElement(
            ImageConstant.img26x20,
            13.h,
            17.h,
            1500,
          ),
        ),
        Positioned(
          top: 214.h,
          left: 426.h,
          child: _buildFloatingElement(
            ImageConstant.img26x20,
            16.h,
            20.h,
            0,
          ),
        ),
        Positioned(
          top: 346.h,
          left: 413.h,
          child: _buildFloatingElement(
            ImageConstant.img42x42,
            42.h,
            42.h,
            1500,
          ),
        ),
        // Casino chip elements
        Positioned(
          top: 303.h,
          left: 14.h,
          child: _buildFloatingElement(
            ImageConstant.img12121,
            50.h,
            42.h,
            0,
          ),
        ),
        Positioned(
          top: 26.h,
          left: 409.h,
          child: _buildFloatingElement(
            ImageConstant.img12122,
            37.h,
            31.h,
            1500,
          ),
        ),
        // Additional casino elements
        Positioned(
          top: 287.h,
          left: 434.h,
          child: _buildFloatingElement(
            ImageConstant.imgHi01,
            46.h,
            100.h,
            0,
          ),
        ),
        Positioned(
          top: 297.h,
          left: 127.h,
          child: _buildFloatingElement(
            ImageConstant.imgFgdg122,
            66.h,
            68.h,
            1500,
          ),
        ),
        Positioned(
          top: 214.h,
          left: 327.h,
          child: _buildFloatingElement(
            ImageConstant.imgFgdg122,
            53.h,
            54.h,
            0,
          ),
        ),
        Positioned(
          top: 95.h,
          left: 362.h,
          child: _buildFloatingElement(
            ImageConstant.imgFgdg122,
            53.h,
            54.h,
            1500,
          ),
        ),
        Positioned(
          top: 156.h,
          left: 27.h,
          child: _buildFloatingElement(
            ImageConstant.imgFgdg122,
            49.h,
            51.h,
            0,
          ),
        ),
        Positioned(
          top: 125.h,
          left: 428.h,
          child: _buildFloatingElement(
            ImageConstant.imgFgdg124,
            36.h,
            41.h,
            1500,
          ),
        ),
        Positioned(
          top: 243.h,
          left: 82.h,
          child: _buildFloatingElement(
            ImageConstant.imgFgdg124,
            43.h,
            48.h,
            0,
          ),
        ),
      ],
    );
  }

  /// Individual floating element with animation
  Widget _buildFloatingElement(
      String imagePath, double width, double height, int delay) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 3000),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, -10 * (0.5 - (0.5 - (value * 2 - 1).abs()))),
          child: CustomImageView(
            imagePath: imagePath,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  /// Main content including titles and button
  Widget _buildMainContent() {
    return Stack(
      children: [
        // Main title with gold gradient
        Positioned(
          top: 28.h,
          left: 127.h,
          child: Container(
            width: 228.h,
            height: 33.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFD76),
                  appTheme.colorFFFFD8,
                  appTheme.colorFFFFEC,
                ],
                stops: [0.0, 0.5, 1.0],
              ).createShader(bounds),
              child: Text(
                'A GIFT FROM A FRIEND',
                style: TextStyleHelper.instance.headline24Bold
                    .copyWith(height: 1.2),
              ),
            ),
          ),
        ),
        // Invitation text
        Positioned(
          top: 56.h,
          left: 99.h,
          child: Container(
            width: 284.h,
            height: 39.h,
            child: Text(
              'you are invited to receive 500 PHP in cash\ndownload JBET88 now and you and i will',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom, height: 1.1),
            ),
          ),
        ),
        // Bonus text with gold gradient
        Positioned(
          top: 96.h,
          left: 161.h,
          child: Container(
            width: 161.h,
            height: 26.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFD76),
                  appTheme.colorFFFFD8,
                  appTheme.colorFFFFEC,
                ],
                stops: [0.0, 0.5, 1.0],
              ).createShader(bounds),
              child: Text(
                'get 500 PHP bonus',
                style:
                    TextStyleHelper.instance.title20Bold.copyWith(height: 1.25),
              ),
            ),
          ),
        ),
        // "Get" text with white gradient
        Positioned(
          top: 330.h,
          left: 78.h,
          child: Container(
            width: 48.h,
            height: 38.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  appTheme.colorFFE7E7,
                  appTheme.colorFFFFFF,
                ],
                stops: [0.0, 0.5, 1.0],
              ).createShader(bounds),
              child: Text(
                'Get',
                style: TextStyleHelper.instance.headline26SemiBold
                    .copyWith(height: 1.23),
              ),
            ),
          ),
        ),
        // Amount text with gold gradient and shadow
        Positioned(
          top: 322.h,
          left: 135.h,
          child: Container(
            width: 157.h,
            height: 35.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFD76),
                  appTheme.colorFFFFD8,
                  appTheme.colorFFFFEC,
                ],
                stops: [0.0, 0.5, 1.0],
              ).createShader(bounds),
              child: Text(
                '৳1000',
                style: TextStyleHelper.instance.display50Bold
                    .copyWith(height: 1.08, shadows: [
                  Shadow(
                    offset: Offset(0, 3.h),
                    blurRadius: 1.h,
                    color: appTheme.colorFF001D,
                  ),
                ]),
              ),
            ),
          ),
        ),
        // "for free" text with white gradient
        Positioned(
          top: 330.h,
          left: 301.h,
          child: Container(
            width: 98.h,
            height: 38.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  appTheme.colorFFE7E7,
                  appTheme.colorFFFFFF,
                ],
                stops: [0.0, 0.5, 1.0],
              ).createShader(bounds),
              child: Text(
                'for free',
                style: TextStyleHelper.instance.headline26SemiBold
                    .copyWith(height: 1.23),
              ),
            ),
          ),
        ),
        // Call to action button
        Positioned(
          top: 340.h,
          left: 101.h,
          child: GestureDetector(
            onTap: () => controller.onReferralButtonPressed(),
            child: Container(
              width: 279.h,
              height: 39.h,
              decoration: BoxDecoration(
                color: Color(0xFFC20003).withAlpha(204),
                borderRadius: BorderRadius.circular(6.h),
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Text(
                    'Help your friends, get instant cash and\nreceive 500 PHP',
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom, height: 1.0),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
