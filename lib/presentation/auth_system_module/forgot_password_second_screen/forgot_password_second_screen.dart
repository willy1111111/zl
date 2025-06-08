import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/forgot_password_second_controller.dart';

class ForgotPasswordSecondScreen
    extends GetWidget<ForgotPasswordSecondController> {
  ForgotPasswordSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Column(
          children: [
            // Status Bar Image
            CustomImageView(
              imagePath: ImageConstant.imgImage4,
              height: 53.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            // Custom App Bar
            CustomVipAppBar(
              title: 'Forgot password',
              showCurrency: false,
              leadingIcon: ImageConstant.img2,
              onLeadingPressed: () => controller.onBackPressed(),
            ),

            // Main Content
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    SizedBox(height: 64.h),

                    // Christmas Card Container
                    _buildChristmasCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Builds the Christmas illustration card with continue button
  Widget _buildChristmasCard() {
    return Container(
      width: 321.h,
      height: 251.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(
          color: appTheme.colorFF2C2C,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF0000,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          // Christmas Illustration
          Positioned(
            top: 13.h,
            left: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.img21,
              width: 302.h,
              height: 181.h,
              fit: BoxFit.cover,
            ),
          ),

          // Bottom Progress Bar Background
          Positioned(
            bottom: 0,
            left: 48.h,
            child: Container(
              width: 263.h,
              height: 34.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(6.h),
              ),
            ),
          ),

          // Continue Button
          Positioned(
            bottom: 0,
            left: 15.h,
            child: GestureDetector(
              onTap: () => controller.onContinuePressed(),
              child: Container(
                width: 51.h,
                height: 34.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFFD3D4,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: Center(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup12450,
                    width: 26.h,
                    height: 16.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
