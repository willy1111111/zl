import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/forgot_password_controller.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Background with header image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage4,
              height: 53.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // App Bar
          _buildAppBar(),

          // Main Content Card
          _buildMainContentCard(),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 64.h,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img,
                    height: 20.h,
                    width: 20.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Forgot password',
                    style: TextStyleHelper.instance.title16Medium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContentCard() {
    return Positioned(
      left: 28.h,
      top: 211.h,
      child: Container(
        width: 321.h,
        height: 251.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          border: Border.all(color: appTheme.colorFF2C2C),
          borderRadius: BorderRadius.circular(8.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF0000,
              offset: Offset(0, 4),
              blurRadius: 4.h,
            ),
          ],
        ),
        child: Stack(
          children: [
            // Christmas Panda Image
            Positioned(
              left: 9.h,
              top: 13.h,
              child: CustomImageView(
                imagePath: ImageConstant.img21,
                width: 302.h,
                height: 181.h,
                fit: BoxFit.cover,
              ),
            ),

            // Input Field
            Positioned(
              left: 9.h,
              top: 205.h,
              child: Container(
                width: 134.h,
                height: 34.h,
                child: Obx(
                  () => TextField(
                    controller: controller.emailController,
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    decoration: InputDecoration(
                      hintText: 'Enter email or username',
                      hintStyle: TextStyleHelper.instance.body14
                          .copyWith(color: appTheme.colorFF9CA3),
                      filled: true,
                      fillColor: appTheme.colorFF4D6C,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.h),
                        borderSide: BorderSide(color: appTheme.colorFF1755),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.h),
                        borderSide: BorderSide(color: appTheme.colorFF1755),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.h),
                        borderSide:
                            BorderSide(color: appTheme.colorFF2563, width: 2),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
                    ),
                    onSubmitted: (value) => controller.sendRecoveryEmail(),
                  ),
                ),
              ),
            ),

            // Send Button
            Positioned(
              left: 152.h,
              top: 205.h,
              child: CustomButton(
                variant: CustomButtonVariant.icon,
                iconPath: ImageConstant.imgGroup12450,
                width: 51.h,
                height: 34.h,
                backgroundColor: appTheme.colorFFD3D4,
                borderRadius: 8.h,
                iconWidth: 26.h,
                iconHeight: 16.h,
                onTap: () => controller.sendRecoveryEmail(),
              ),
            ),

            // Additional Container
            Positioned(
              left: 182.h,
              top: 205.h,
              child: Container(
                width: 129.h,
                height: 34.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(6.h),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
