import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import 'controller/forgot_password_controller.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(height: 53.h),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 27.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildChristmasCard(),
                    SizedBox(height: 32.h),
                    _buildInstructionText(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      showBackButton: true,
      backButtonText: 'Forgot password',
      backButtonIcon: ImageConstant.img22,
      backgroundColor: appTheme.colorFF1E20,
      onBackPressed: () {
        Get.back();
      },
    );
  }

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
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 13.h,
            left: 9.h,
            child: Container(
              width: 302.h,
              height: 181.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.h),
              ),
              clipBehavior: Clip.antiAlias,
              child: CustomImageView(
                imagePath: ImageConstant.img21181x302,
                width: 302.h,
                height: 181.h,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 16.h,
            right: 48.h,
            child: Container(
              width: 263.h,
              height: 34.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(6.h),
              ),
            ),
          ),
          Positioned(
            bottom: 16.h,
            left: 15.h,
            child: CustomButton(
              iconPath: ImageConstant.imgGroup12450,
              onPressed: () {
                controller.onContinuePressed();
              },
              backgroundColor: appTheme.colorFFD3D4,
              width: 51.h,
              height: 34.h,
              borderRadius: 8.h,
              buttonType: CustomButtonType.filled,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstructionText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Text(
        'Follow the instructions to reset your password',
        textAlign: TextAlign.center,
        style: TextStyleHelper.instance.body14RegularInter
            .copyWith(color: Color(0xFFFFFFFF).withAlpha(179)),
      ),
    );
  }
}
