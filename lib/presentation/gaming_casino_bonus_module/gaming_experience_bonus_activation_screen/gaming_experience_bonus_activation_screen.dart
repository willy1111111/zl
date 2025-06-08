import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_experience_bonus_activation_controller.dart';

class GamingExperienceBonusActivationScreen
    extends GetWidget<GamingExperienceBonusActivationController> {
  const GamingExperienceBonusActivationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF2223,
      body: Container(
        height: SizeUtils.height,
        width: SizeUtils.width,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.img1812x375,
              height: SizeUtils.height,
              width: SizeUtils.width,
              fit: BoxFit.cover,
            ),

            // Modal Overlay
            Container(
              height: SizeUtils.height,
              width: SizeUtils.width,
              color: appTheme.blackCustom.withAlpha(204),
              child: Center(
                child: _buildMainModalContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainModalContainer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Experience Badge
          Positioned(
            top: -40.h,
            left: 0,
            right: 0,
            child: _buildExperienceBadge(),
          ),

          // Main Dialog
          _buildMainDialog(),

          // Close Button
          Positioned(
            bottom: -64.h,
            left: 0,
            right: 0,
            child: _buildCloseButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceBadge() {
    return Center(
      child: Container(
        width: 80.h,
        height: 80.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
          ),
          shape: BoxShape.circle,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 50.h,
              left: 30.h,
              child: CustomImageView(
                imagePath: ImageConstant.img2,
                width: 18.h,
                height: 9.h,
              ),
            ),
            Positioned(
              top: 27.h,
              left: 5.h,
              child: CustomImageView(
                imagePath: ImageConstant.img133x67,
                width: 67.h,
                height: 33.h,
              ),
            ),
            Positioned(
              top: 11.h,
              left: 5.h,
              child: CustomImageView(
                imagePath: ImageConstant.img17,
                width: 67.h,
                height: 57.h,
              ),
            ),
            Positioned(
              top: 13.h,
              left: 33.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage381,
                width: 10.h,
                height: 10.h,
              ),
            ),
            Positioned(
              top: 19.h,
              left: 34.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage383,
                width: 9.h,
                height: 9.h,
              ),
            ),
            Positioned(
              top: 15.h,
              left: 33.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage382,
                width: 8.h,
                height: 8.h,
              ),
            ),
            Positioned(
              top: 27.h,
              left: 4.h,
              child: CustomImageView(
                imagePath: ImageConstant.img14,
                width: 68.h,
                height: 35.h,
              ),
            ),
            Positioned(
              top: 36.h,
              left: 14.h,
              child: Container(
                width: 49.h,
                height: 15.h,
                child: ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFFEF7A),
                      appTheme.colorFFFFFF,
                      appTheme.colorFFFFD1,
                    ],
                    stops: [0.0, 0.5, 1.0],
                  ).createShader(bounds),
                  child: Text(
                    'Experience',
                    style: TextStyleHelper.instance.label9.copyWith(shadows: [
                      Shadow(
                        offset: Offset(0, 1),
                        blurRadius: 2,
                        color: appTheme.blackCustom,
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainDialog() {
    return Container(
      width: 343.h,
      height: 265.h,
      padding: EdgeInsets.all(24.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
          topRight: Radius.circular(20.h),
          bottomLeft: Radius.circular(12.h),
          bottomRight: Radius.circular(12.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 48.h),
          _buildBonusDescription(),
          SizedBox(height: 32.h),
          _buildRequirementsList(),
        ],
      ),
    );
  }

  Widget _buildBonusDescription() {
    return Obx(() => Container(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style:
                  TextStyleHelper.instance.body13Medium.copyWith(height: 1.5),
              children: [
                TextSpan(
                  text: 'Experience bonus ',
                  style: TextStyleHelper.instance.textStyle38
                      .copyWith(color: appTheme.colorFF8089),
                ),
                TextSpan(
                  text: controller.bonusAmount.value,
                  style: TextStyleHelper.instance.body15Black
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
                TextSpan(
                  text:
                      ' will be activated after completing the two requirements and you can play immediately after activation.',
                  style: TextStyleHelper.instance.textStyle38
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildRequirementsList() {
    return Obx(() => Column(
          children: [
            _buildRequirementItem(
              icon: ImageConstant.imgGroup12521,
              title: 'Phone verification',
              isCompleted: controller.isPhoneVerified.value,
              onButtonPressed: null,
            ),
            SizedBox(height: 16.h),
            _buildRequirementItem(
              icon: ImageConstant.imgEllipse528,
              title: 'Deposit any amount',
              isCompleted: controller.isDepositCompleted.value,
              onButtonPressed: () => controller.onDepositPressed(),
            ),
          ],
        ));
  }

  Widget _buildRequirementItem({
    required String icon,
    required String title,
    required bool isCompleted,
    VoidCallback? onButtonPressed,
  }) {
    return Row(
      children: [
        Container(
          width: 20.h,
          height: 20.h,
          child: CustomImageView(
            imagePath: icon,
            width: 20.h,
            height: 20.h,
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Container(
            height: 48.h,
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF3032,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyleHelper.instance.body14Medium,
                ),
                isCompleted
                    ? Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                          ),
                          borderRadius: BorderRadius.circular(6.h),
                        ),
                        child: Text(
                          'Completed',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFF8089),
                        ),
                      )
                    : GestureDetector(
                        onTap: onButtonPressed,
                        child: Container(
                          width: 77.h,
                          height: 34.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFFBF00), Color(0xFFFF7A00)],
                            ),
                            borderRadius: BorderRadius.circular(6.h),
                          ),
                          child: Center(
                            child: Text(
                              'Deposit',
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(color: appTheme.whiteCustom),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCloseButton() {
    return Center(
      child: GestureDetector(
        onTap: () => controller.onClosePressed(),
        child: Container(
          width: 32.h,
          height: 32.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup,
            width: 32.h,
            height: 32.h,
          ),
        ),
      ),
    );
  }
}
