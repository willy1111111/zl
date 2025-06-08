import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/lucky_spin_wheel_game_controller.dart';

class LuckySpinWheelGameScreen extends GetWidget<LuckySpinWheelGameController> {
  const LuckySpinWheelGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 480.h,
        height: 513.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.135, -1),
            end: Alignment(-0.135, 1),
            colors: [Color(0xFF003E44), Color(0xFF92FF62)],
          ),
        ),
        child: Stack(
          children: [
            _buildBackgroundImages(),
            _buildGroundSection(),
            _buildFloatingCoins(),
            _buildCharacterImages(),
            _buildWheelContainer(),
            _buildPromotionalText(),
            _buildGameElements(),
            _buildMarginIcons(),
            _buildSpecialElements(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImages() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgBgstar525x366,
            width: 366.h,
            height: 525.h,
          ),
        ),
        Positioned(
          left: 179.h,
          top: 15.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgBgstar,
            width: 301.h,
            height: 497.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 16.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgF2,
            width: 480.h,
            height: 497.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 46.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgF1,
            width: 480.h,
            height: 466.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 37.h,
          child: CustomImageView(
            imagePath: ImageConstant.img,
            width: 480.h,
            height: 475.h,
          ),
        ),
      ],
    );
  }

  Widget _buildGroundSection() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 326.h,
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
                  Color(0xFF000000)
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 362.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgD5f2b4b394b4e53a892c7beebb2542b427db41d51bb3d4qtetft2,
            width: 386.h,
            height: 239.h,
          ),
        ),
        Positioned(
          left: 132.h,
          top: 362.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgD5f2b4b394b4e53a892c7beebb2542b427db41d51bb3d4qtetft3,
            width: 348.h,
            height: 239.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 183.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgD5f2b4b394b4e53a892c7beebb2542b427db41d51bb3d4qtetft1,
            width: 480.h,
            height: 330.h,
          ),
        ),
      ],
    );
  }

  Widget _buildFloatingCoins() {
    return Stack(
      children: [
        Positioned(
          left: 36.h,
          top: 91.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7779,
                  width: 83.h,
                  height: 81.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 353.h,
          top: 66.h,
          child: AnimatedBuilder(
            animation: controller.floatingDelayedAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset:
                    Offset(0, controller.floatingDelayedAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7775,
                  width: 105.h,
                  height: 105.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 0,
          top: 178.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7778,
                  width: 69.h,
                  height: 93.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 2.h,
          top: 272.h,
          child: AnimatedBuilder(
            animation: controller.floatingDelayedAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset:
                    Offset(0, controller.floatingDelayedAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7772,
                  width: 138.h,
                  height: 138.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 357.h,
          top: 205.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7771,
                  width: 116.h,
                  height: 115.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 228.h,
          top: 240.h,
          child: AnimatedBuilder(
            animation: controller.floatingDelayedAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset:
                    Offset(0, controller.floatingDelayedAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7776,
                  width: 118.h,
                  height: 118.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 349.h,
          top: 295.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7774,
                  width: 102.h,
                  height: 102.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 428.h,
          top: 160.h,
          child: AnimatedBuilder(
            animation: controller.floatingDelayedAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset:
                    Offset(0, controller.floatingDelayedAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img777676x52,
                  width: 52.h,
                  height: 76.h,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 342.h,
          top: 10.h,
          child: AnimatedBuilder(
            animation: controller.floatingAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, controller.floatingAnimation.value * -10),
                child: CustomImageView(
                  imagePath: ImageConstant.img7777,
                  width: 53.h,
                  height: 53.h,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCharacterImages() {
    return Stack(
      children: [
        Positioned(
          left: 330.h,
          top: 0,
          child: CustomImageView(
            imagePath: ImageConstant
                .img0ab53a5f627c8361ab972d9a990c7cf913a356332d4d69krzrj1,
            width: 84.h,
            height: 69.h,
          ),
        ),
        Positioned(
          left: 0,
          top: 252.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1174,
            width: 122.h,
            height: 198.h,
          ),
        ),
        Positioned(
          left: 343.h,
          top: 273.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1173,
            width: 137.h,
            height: 147.h,
          ),
        ),
      ],
    );
  }

  Widget _buildWheelContainer() {
    return Positioned(
      left: 28.h,
      top: 60.h,
      child: Container(
        width: 428.h,
        height: 332.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img332x428,
              width: 428.h,
              height: 332.h,
            ),
            Positioned(
              left: 59.h,
              top: 112.h,
              child: Obx(() {
                return AnimatedBuilder(
                  animation: controller.spinAnimation,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: controller.spinAnimation.value * 2 * 3.14159,
                      child: CustomImageView(
                        imagePath: ImageConstant.img83,
                        width: 311.h,
                        height: 311.h,
                      ),
                    );
                  },
                );
              }),
            ),
            Positioned(
              left: 24.h,
              top: 75.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup2131330058,
                width: 378.h,
                height: 378.h,
              ),
            ),
            Positioned(
              left: 60.h,
              top: 111.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup2131330042,
                width: 308.h,
                height: 308.h,
              ),
            ),
            _buildWheelCenter(),
            Positioned(
              left: 203.h,
              top: 111.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup2131330076,
                width: 25.h,
                height: 35.h,
              ),
            ),
            _buildPrizeIndicators(),
            _buildPrizeTexts(),
            _buildDecorativeCoins(),
          ],
        ),
      ),
    );
  }

  Widget _buildWheelCenter() {
    return Positioned(
      left: 139.h,
      top: 192.h,
      child: GestureDetector(
        onTap: () => controller.spinWheel(),
        child: Container(
          width: 150.h,
          height: 150.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF000000), Color(0xFF000000)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 26.h,
                top: 24.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img97x97,
                  width: 97.h,
                  height: 97.h,
                ),
              ),
              Positioned(
                left: 67.h,
                top: 58.h,
                child: Text(
                  '1',
                  style: TextStyleHelper.instance.title22BlackSFProText
                      .copyWith(height: 1.23),
                ),
              ),
              Positioned(
                left: 42.h,
                top: 30.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img200000ispt,
                  width: 65.h,
                  height: 35.h,
                ),
              ),
              Positioned(
                left: 56.h,
                top: 84.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame21313299231,
                  width: 38.h,
                  height: 24.h,
                ),
              ),
              _buildCenterTextElements(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCenterTextElements() {
    return Stack(
      children: [
        Positioned(
          left: 8.h,
          top: 8.h,
          child: Text(
            'unknow',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 110.h,
          top: 106.h,
          child: Text(
            'unknow',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 108.h,
          top: 11.h,
          child: Text(
            '999.99',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.8),
          ),
        ),
        Positioned(
          left: 121.h,
          top: 86.h,
          child: Text(
            '999.99',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.2),
          ),
        ),
        Positioned(
          left: 92.h,
          top: 119.h,
          child: Text(
            '999.99',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 3.0),
          ),
        ),
      ],
    );
  }

  Widget _buildPrizeIndicators() {
    return Stack(
      children: [
        Positioned(
          left: 188.h,
          top: 133.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgSubtract,
            width: 50.h,
            height: 124.h,
            radius: BorderRadius.circular(4.h),
          ),
        ),
        Positioned(
          left: 188.h,
          top: 133.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgSubtract124x50,
            width: 50.h,
            height: 124.h,
            radius: BorderRadius.circular(4.h),
          ),
        ),
        Positioned(
          left: 206.h,
          top: 142.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin,
            width: 16.h,
            height: 16.h,
          ),
        ),
      ],
    );
  }

  Widget _buildPrizeTexts() {
    return Stack(
      children: [
        Positioned(
          left: 235.h,
          top: 228.h,
          child: Text(
            '999.99',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.body13BoldArial.copyWith(height: 1.54),
          ),
        ),
        Positioned(
          left: 257.h,
          top: 243.h,
          child: Text(
            'unknow',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 162.h,
          top: 339.h,
          child: Text(
            'unknow',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 207.h,
          top: 370.h,
          child: Text(
            'unknow',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 294.h,
          top: 317.h,
          child: Text(
            '2000.00',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 1.2),
          ),
        ),
        Positioned(
          left: 163.h,
          top: 288.h,
          child: Text(
            '2000.00',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 173.h,
          top: 324.h,
          child: Text(
            '1.99',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 1.2),
          ),
        ),
        Positioned(
          left: 182.h,
          top: 359.h,
          child: Text(
            '999.99',
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        _buildActionTexts(),
      ],
    );
  }

  Widget _buildActionTexts() {
    return Stack(
      children: [
        Positioned(
          left: 202.h,
          top: 233.h,
          child: Text(
            'one more',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 295.h,
          top: 283.h,
          child: Text(
            'one more',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
        Positioned(
          left: 238.h,
          top: 382.h,
          child: Text(
            'one more',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.label10BoldArial.copyWith(height: 2.0),
          ),
        ),
      ],
    );
  }

  Widget _buildDecorativeCoins() {
    return Stack(
      children: [
        ...List.generate(16, (index) {
          final positions = [
            [313.h, 210.h],
            [321.h, 201.h],
            [361.h, 242.h],
            [384.h, 295.h],
            [384.h, 351.h],
            [362.h, 404.h],
            [323.h, 444.h],
            [267.h, 467.h],
            [210.h, 467.h],
            [157.h, 445.h],
            [116.h, 403.h],
            [96.h, 351.h],
            [96.h, 295.h],
            [117.h, 243.h],
            [158.h, 201.h],
            [211.h, 179.h],
          ];
          return Positioned(
            left: positions[index][0],
            top: positions[index][1],
            child: Container(
              width: 4.h,
              height: 4.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFFFFD9,
                    blurRadius: 3.h,
                  ),
                ],
              ),
            ),
          );
        }),
        ...List.generate(15, (index) {
          final positions = [
            [313.h, 210.h],
            [351.h, 248.h],
            [371.h, 296.h],
            [371.h, 348.h],
            [351.h, 397.h],
            [313.h, 433.h],
            [265.h, 454.h],
            [212.h, 455.h],
            [163.h, 434.h],
            [265.h, 190.h],
            [212.h, 190.h],
            [164.h, 211.h],
            [128.h, 248.h],
            [107.h, 296.h],
            [107.h, 348.h],
          ];
          return Positioned(
            left: positions[index][0],
            top: positions[index][1],
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFF6C7), Color(0xFFFA9C09)],
                ),
                shape: BoxShape.circle,
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildPromotionalText() {
    return Stack(
      children: [
        Positioned(
          left: 121.h,
          top: 46.h,
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                appTheme.whiteCustom,
                appTheme.colorFFE7E7,
                appTheme.whiteCustom
              ],
            ).createShader(bounds),
            child: Text(
              'Get',
              style: TextStyleHelper
                  .instance.headline26ExtraBoldHelveticaNeueLTPro
                  .copyWith(height: 1.23),
            ),
          ),
        ),
        Positioned(
          left: 165.h,
          top: 25.h,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '₱',
                  style: TextStyleHelper
                      .instance.headline26ExtraBoldHelveticaNeueLTPro
                      .copyWith(letterSpacing: 2, height: 2.35),
                ),
                TextSpan(
                  text: '500',
                  style: TextStyleHelper
                      .instance.display50ExtraBoldHelveticaNeueLTPro
                      .copyWith(letterSpacing: 2, height: 1.22),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 275.h,
          top: 46.h,
          child: ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                appTheme.whiteCustom,
                appTheme.colorFFE7E7,
                appTheme.whiteCustom
              ],
            ).createShader(bounds),
            child: Text(
              'for free',
              style: TextStyleHelper
                  .instance.headline26ExtraBoldHelveticaNeueLTPro
                  .copyWith(height: 1.23),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGameElements() {
    return Stack(
      children: [
        Positioned(
          left: 283.h,
          top: 122.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgFc2,
            width: 113.h,
            height: 142.h,
          ),
        ),
        Positioned(
          left: 296.h,
          top: 158.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1108,
            width: 64.h,
            height: 64.h,
          ),
        ),
        Positioned(
          left: 96.h,
          top: 116.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgBaoshi1,
            width: 142.h,
            height: 142.h,
          ),
        ),
        Positioned(
          left: 151.h,
          top: 84.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage771,
            width: 187.h,
            height: 235.h,
          ),
        ),
        Positioned(
          left: 248.h,
          top: 125.h,
          child: CustomImageView(
            imagePath: ImageConstant.img76x76,
            width: 76.h,
            height: 76.h,
          ),
        ),
        Positioned(
          left: 141.h,
          top: 127.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1100,
            width: 85.h,
            height: 85.h,
          ),
        ),
      ],
    );
  }

  Widget _buildMarginIcons() {
    return Stack(
      children: [
        Positioned(
          left: 190.h,
          top: 208.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin18x18,
            width: 18.h,
            height: 18.h,
          ),
        ),
        Positioned(
          left: 340.h,
          top: 269.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin21x21,
            width: 21.h,
            height: 21.h,
          ),
        ),
        Positioned(
          left: 232.h,
          top: 434.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin16x16,
            width: 16.h,
            height: 16.h,
          ),
        ),
        Positioned(
          left: 275.h,
          top: 205.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin1,
            width: 21.h,
            height: 21.h,
          ),
        ),
        Positioned(
          left: 148.h,
          top: 228.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin23x23,
            width: 23.h,
            height: 23.h,
          ),
        ),
        Positioned(
          left: 123.h,
          top: 358.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin22x22,
            width: 22.h,
            height: 22.h,
          ),
        ),
        Positioned(
          left: 312.h,
          top: 397.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin2,
            width: 23.h,
            height: 23.h,
          ),
        ),
        Positioned(
          left: 185.h,
          top: 421.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin3,
            width: 21.h,
            height: 21.h,
          ),
        ),
        Positioned(
          left: 311.h,
          top: 231.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin4,
            width: 23.h,
            height: 23.h,
          ),
        ),
        Positioned(
          left: 335.h,
          top: 359.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin5,
            width: 22.h,
            height: 22.h,
          ),
        ),
        Positioned(
          left: 149.h,
          top: 393.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin6,
            width: 23.h,
            height: 23.h,
          ),
        ),
        Positioned(
          left: 118.h,
          top: 315.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin17x17,
            width: 17.h,
            height: 17.h,
          ),
        ),
        Positioned(
          left: 278.h,
          top: 421.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMargin20x20,
            width: 20.h,
            height: 20.h,
          ),
        ),
      ],
    );
  }

  Widget _buildSpecialElements() {
    return Stack(
      children: [
        Positioned(
          left: 344.h,
          top: 315.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8it,
            width: 21.h,
            height: 21.h,
          ),
        ),
        Positioned(
          left: 123.h,
          top: 267.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8it25x25,
            width: 25.h,
            height: 25.h,
          ),
        ),
      ],
    );
  }
}
