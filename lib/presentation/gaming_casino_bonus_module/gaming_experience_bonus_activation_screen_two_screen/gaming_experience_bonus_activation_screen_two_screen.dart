import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_experience_bonus_activation_screen_two_controller.dart';

class GamingExperienceBonusActivationScreenTwo
    extends GetWidget<GamingExperienceBonusActivationScreenTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.img1812x375,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            // Overlay with shadow
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: appTheme.blackCustom.withAlpha(128),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 8.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildExperienceBadge(),
                      SizedBox(height: 24.h),
                      _buildBonusCard(),
                      SizedBox(height: 32.h),
                      _buildCloseButton(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceBadge() {
    return Container(
      width: 80.h,
      height: 80.h,
      child: Stack(
        children: [
          // Base gradient circle
          Container(
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
          ),

          // Badge images
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

          // Experience text
          Positioned(
            top: 36.h,
            left: 14.h,
            child: Container(
              width: 49.h,
              height: 15.h,
              child: Text(
                'Experience',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.label9.copyWith(
                    color: appTheme.blackCustom,
                    height: 1.55,
                    shadows: [
                      Shadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 1.h),
                        blurRadius: 2.h,
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusCard() {
    return Container(
      width: 343.h,
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
      ),
      padding: EdgeInsets.all(24.h),
      child: Column(
        children: [
          _buildBonusDescription(),
          SizedBox(height: 32.h),
          _buildRequirementsList(),
        ],
      ),
    );
  }

  Widget _buildBonusDescription() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyleHelper.instance.body13Medium.copyWith(height: 1.84),
        children: [
          TextSpan(
            text: 'Experience bonus ',
            style: TextStyleHelper.instance.textStyle38
                .copyWith(color: appTheme.colorFF8089),
          ),
          TextSpan(
            text: '৳12.00',
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
    );
  }

  Widget _buildRequirementsList() {
    return Obx(() => Column(
          children: [
            _buildRequirementItem(
              statusIcon: ImageConstant.imgRectangle676,
              title: 'Phone verification',
              buttonText: 'Verify',
              onButtonPressed: () => controller.onVerifyPressed(),
              isCompleted: controller.isPhoneVerified.value,
            ),
            SizedBox(height: 16.h),
            _buildRequirementItem(
              statusIcon: ImageConstant.imgEllipse528,
              title: 'Deposit any amount',
              buttonText: 'Deposit',
              onButtonPressed: () => controller.onDepositPressed(),
              isCompleted: controller.isDepositCompleted.value,
            ),
          ],
        ));
  }

  Widget _buildRequirementItem({
    required String statusIcon,
    required String title,
    required String buttonText,
    required VoidCallback onButtonPressed,
    required bool isCompleted,
  }) {
    return Row(
      children: [
        Container(
          width: 20.h,
          height: 20.h,
          child: CustomImageView(
            imagePath: statusIcon,
            width: 20.h,
            height: 20.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Container(
            height: 48.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF3032,
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyleHelper.instance.body14Medium,
                ),
                GestureDetector(
                  onTap: onButtonPressed,
                  child: Container(
                    height: 34.h,
                    constraints: BoxConstraints(minWidth: 77.h),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFFFBF00), Color(0xFFFF7A00)],
                      ),
                      borderRadius: BorderRadius.circular(6.h),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
                    child: Center(
                      child: Text(
                        buttonText,
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
    return GestureDetector(
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
    );
  }
}
