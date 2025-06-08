import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/jeet98_spin_wheel_bonus_controller.dart';
import './widgets/winner_item_widget.dart';

class Jeet98SpinWheelBonusScreen
    extends GetWidget<Jeet98SpinWheelBonusController> {
  const Jeet98SpinWheelBonusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1139,
              height: 812.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 812.h,
                width: 375.h,
                color: appTheme.blackCustom,
              ),
            ),

            // Close Button
            Positioned(
              top: 16.h,
              right: 16.h,
              child: GestureDetector(
                onTap: () => controller.onClosePressed(),
                child: SizedBox(
                  width: 32.h,
                  height: 32.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup848,
                    height: 32.h,
                    width: 32.h,
                  ),
                ),
              ),
            ),

            // Promotional Banner
            Positioned(
              top: 64.h,
              left: 16.h,
              right: 16.h,
              child: SizedBox(
                height: 347.h,
                child: Stack(
                  children: [
                    // Banner Left
                    Positioned(
                      left: 0,
                      top: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgF3,
                        width: 98.h,
                        height: 347.h,
                      ),
                    ),

                    // Banner Right
                    Positioned(
                      right: 0,
                      top: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.img187dtlr31,
                        width: 103.h,
                        height: 340.h,
                      ),
                    ),

                    // Get ₱500 for free Text
                    Positioned(
                      top: 104.h,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text(
                          'Get ₱500 for free',
                          style: TextStyleHelper.instance.headline24BoldArial
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Winner Notifications
            Positioned(
              bottom: 234.h,
              left: 56.h,
              right: 56.h,
              child: Container(
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  color: appTheme.color722020,
                  border: Border.all(
                    color: appTheme.color4CFFE0,
                    width: 4.h,
                  ),
                  borderRadius: BorderRadius.circular(12.h),
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img1,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Obx(() => Column(
                          children: List.generate(
                            controller.winnersList.length,
                            (index) => Padding(
                              padding: EdgeInsets.only(
                                bottom:
                                    index < controller.winnersList.length - 1
                                        ? 8.h
                                        : 0,
                              ),
                              child: WinnerItemWidget(
                                winnerItem: controller.winnersList[index],
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),

            // Spin Wheel Container
            Positioned(
              top: 148.h,
              left: 0,
              right: 0,
              child: SizedBox(
                height: 556.h,
                child: _buildSpinWheelSection(),
              ),
            ),

            // Bottom Game Elements
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _buildBottomElements(),
            ),

            // Download Button
            Positioned(
              top: 302.h,
              left: 163.h,
              child: GestureDetector(
                onTap: () => controller.onDownloadPressed(),
                child: SizedBox(
                  width: 122.h,
                  height: 49.h,
                  child: Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSubtract,
                        width: 122.h,
                        height: 49.h,
                      ),
                      Positioned(
                        top: 16.h,
                        left: 17.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgDownload,
                          width: 16.h,
                          height: 16.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Floating Coins
            _buildFloatingCoins(),
          ],
        ),
      ),
    );
  }

  Widget _buildSpinWheelSection() {
    return Stack(
      children: [
        // Wheel Background Elements
        CustomImageView(
          imagePath: ImageConstant.img,
          width: 375.h,
          height: 556.h,
          fit: BoxFit.cover,
        ),

        Positioned(
          top: 9.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgF1,
            width: 375.h,
            height: 529.h,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          top: -20.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgF2,
            width: 375.h,
            height: 587.h,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          top: 40.h,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.img291x374,
            width: 291.h,
            height: 374.h,
            fit: BoxFit.cover,
          ),
        ),

        // Decorative Elements
        Positioned(
          top: 84.h,
          right: 36.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgFc2,
            width: 139.h,
            height: 111.h,
          ),
        ),

        Positioned(
          top: 119.h,
          right: 72.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1108,
            width: 62.h,
            height: 62.h,
          ),
        ),

        Positioned(
          top: 78.h,
          left: 45.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgBaoshi1,
            width: 140.h,
            height: 140.h,
          ),
        ),

        // Main Wheel
        _buildMainWheel(),

        // Wheel Decorative Circles
        Positioned(
          top: 132.h,
          left: 37.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup2131330042,
            width: 302.h,
            height: 302.h,
          ),
        ),

        Positioned(
          top: 97.h,
          left: 2.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup2131330058,
            width: 370.h,
            height: 370.h,
          ),
        ),

        // Spin Button
        Positioned(
          top: 211.h,
          left: 114.h,
          child: _buildSpinButton(),
        ),

        // Prize Amount Indicators
        _buildPrizeIndicators(),

        // Glowing Dots Around Wheel
        _buildGlowingDots(),
      ],
    );
  }

  Widget _buildMainWheel() {
    return Stack(
      children: [
        Positioned(
          top: 47.h,
          left: 99.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage771,
            width: 231.h,
            height: 184.h,
          ),
        ),
        Positioned(
          top: 87.h,
          left: 194.h,
          child: CustomImageView(
            imagePath: ImageConstant.img75x75,
            width: 75.h,
            height: 75.h,
          ),
        ),
        Positioned(
          top: 89.h,
          left: 89.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1100,
            width: 84.h,
            height: 84.h,
          ),
        ),
        Positioned(
          top: 55.h,
          left: 212.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .img0ab53a5f627c8361ab972d9a990c7cf913a356332d4d69krzrj1,
            width: 83.h,
            height: 83.h,
          ),
        ),
      ],
    );
  }

  Widget _buildSpinButton() {
    return GestureDetector(
      onTap: () => controller.onSpinPressed(),
      child: SizedBox(
        width: 147.h,
        height: 147.h,
        child: Stack(
          children: [
            Container(
              width: 147.h,
              height: 147.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [appTheme.blackCustom, appTheme.blackCustom],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.img95x95,
                  width: 95.h,
                  height: 95.h,
                ),
              ),
            ),
            Center(
              child: Obx(() => Text(
                    controller.spinCount.value.toString(),
                    style: TextStyleHelper.instance.headline24BlackSFProText,
                  )),
            ),
            Positioned(
              top: 24.h,
              left: 41.h,
              child: CustomImageView(
                imagePath: ImageConstant.img100000ispt,
                width: 35.h,
                height: 64.h,
              ),
            ),
            Positioned(
              top: 81.h,
              left: 54.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrame21313299231,
                width: 24.h,
                height: 38.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrizeIndicators() {
    return Stack(
      children: [
        Positioned(
          top: 198.h,
          left: 183.h,
          child: Text(
            '999.99',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 199.h,
          left: 203.h,
          child: Text(
            'unknow',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 295.h,
          left: 105.h,
          child: Text(
            'unknow',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 326.h,
          left: 151.h,
          child: Text(
            'unknow',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 280.h,
          left: 238.h,
          child: Text(
            '2000.00',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 244.h,
          left: 107.h,
          child: Text(
            '2000.00',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 315.h,
          left: 127.h,
          child: Text(
            '999.99',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 190.h,
          left: 149.h,
          child: Text(
            'one more',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 246.h,
          left: 238.h,
          child: Text(
            'one more',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
        Positioned(
          top: 337.h,
          left: 183.h,
          child: Text(
            'one more',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ],
    );
  }

  Widget _buildGlowingDots() {
    return Stack(
      children: [
        Positioned(
          top: 170.h,
          left: 258.h,
          child: Container(
            width: 5.h,
            height: 5.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xFFFFF6C7), Color(0xFFFA9C09)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        _buildGlowingDot(161.h, 265.h),
        _buildGlowingDot(201.h, 305.h),
        _buildGlowingDot(253.h, 327.h),
        _buildGlowingDot(308.h, 327.h),
        _buildGlowingDot(360.h, 306.h),
        _buildGlowingDot(399.h, 267.h),
        _buildGlowingDot(422.h, 213.h),
        _buildGlowingDot(422.h, 157.h),
        _buildGlowingDot(400.h, 105.h),
        _buildGlowingDot(359.h, 65.h),
        _buildGlowingDot(308.h, 45.h),
        _buildGlowingDot(253.h, 45.h),
        _buildGlowingDot(202.h, 66.h),
        _buildGlowingDot(161.h, 106.h),
        _buildGlowingDot(140.h, 158.h),
        _buildGlowingDot(140.h, 213.h),
      ],
    );
  }

  Widget _buildGlowingDot(double top, double left) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 4.h,
        height: 4.h,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: appTheme.whiteCustom,
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFFFFD9,
              blurRadius: 4.h,
              spreadRadius: 0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomElements() {
    return Stack(
      children: [
        Positioned(
          bottom: 317.h,
          left: 47.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .img60247024a38f18f94f8d6028123e0e9d3c31277c47ae0avgolhfw658webp1,
            width: 94.h,
            height: 90.h,
          ),
        ),
        Positioned(
          bottom: 317.h,
          right: 50.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .img60247024a38f18f94f8d6028123e0e9d3c31277c47ae0avgolhfw658webp2,
            width: 94.h,
            height: 90.h,
          ),
        ),
        Positioned(
          bottom: 247.h,
          left: 45.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup2131329457,
            width: 21.h,
            height: 33.h,
          ),
        ),
        Positioned(
          bottom: 246.h,
          right: 62.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup2131329458,
            width: 15.h,
            height: 24.h,
          ),
        ),
        Positioned(
          bottom: 237.h,
          left: 100.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgC4950f6b1abbb1868c88547b19975c340a7d8e664b1d6ovbaqhfw658webp1,
            width: 14.h,
            height: 85.h,
          ),
        ),
        Positioned(
          bottom: 237.h,
          right: 83.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgC4950f6b1abbb1868c88547b19975c340a7d8e664b1d6ovbaqhfw658webp2,
            width: 14.h,
            height: 85.h,
          ),
        ),
        Positioned(
          bottom: 322.h,
          left: 21.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1146,
            width: 127.h,
            height: 325.h,
          ),
        ),
      ],
    );
  }

  Widget _buildFloatingCoins() {
    return Stack(
      children: [
        _buildFloatingCoin(194.h, 61.h, 0),
        _buildFloatingCoin(150.h, 61.h, 500),
        _buildFloatingCoin(127.h, 84.h, 1000),
        _buildFloatingCoin(127.h, 128.h, 1500),
        _buildFloatingCoin(127.h, 172.h, 2000),
        _buildFloatingCoin(127.h, 215.h, 300),
        _buildFloatingCoin(127.h, 260.h, 800),
        _buildFloatingCoin(127.h, 304.h, 1300),
        _buildFloatingCoin(150.h, 49.h, 1800),
        _buildFloatingCoin(194.h, 49.h, 200),
      ],
    );
  }

  Widget _buildFloatingCoin(double bottom, double right, int delay) {
    return Positioned(
      bottom: bottom,
      right: right,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup2131329463,
        width: 9.h,
        height: 9.h,
      ),
    );
  }
}
