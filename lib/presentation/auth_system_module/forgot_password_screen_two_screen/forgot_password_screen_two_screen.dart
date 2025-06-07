import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import 'controller/forgot_password_screen_two_controller.dart';

class ForgotPasswordScreenTwo
    extends GetWidget<ForgotPasswordScreenTwoController> {
  ForgotPasswordScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Top Header Image
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
          Positioned(
            top: 20.h,
            left: 16.h,
            child: CustomAppBar(
              showBackButton: true,
              backButtonText: 'Forgot password',
              backButtonIcon: ImageConstant.img22,
              onBackPressed: () => Get.back(),
              backgroundColor: appTheme.transparentCustom,
              showShadow: false,
            ),
          ),

          // Main Card Container
          Positioned(
            top: 211.h,
            left: 28.h,
            child: Container(
              width: 321.h,
              height: 251.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                border: Border.all(color: appTheme.colorFF2C2C),
                borderRadius: BorderRadius.circular(8.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Christmas Panda Image
                  Positioned(
                    top: 13.h,
                    left: 9.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img21181x302,
                      height: 181.h,
                      width: 302.h,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Input Field
                  Positioned(
                    bottom: 12.h,
                    left: 9.h,
                    child: Container(
                      width: 134.h,
                      height: 34.h,
                      child: TextFormField(
                        controller: controller.emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.whiteCustom),
                        decoration: InputDecoration(
                          hintText: 'Enter email or username',
                          hintStyle: TextStyleHelper.instance.body14
                              .copyWith(color: appTheme.colorFF9E9E),
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
                            borderSide: BorderSide(
                                color: appTheme.colorFF2196, width: 2.h),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12.h, vertical: 8.h),
                        ),
                      ),
                    ),
                  ),

                  // Send Button
                  Positioned(
                    bottom: 12.h,
                    right: 9.h,
                    child: CustomButton(
                      iconPath: ImageConstant.imgGroup12450,
                      onPressed: () => controller.onSendPressed(),
                      backgroundColor: appTheme.colorFFD3D4,
                      width: 51.h,
                      height: 34.h,
                      borderRadius: 8.h,
                      buttonType: CustomButtonType.filled,
                    ),
                  ),

                  // Additional Button Background
                  Positioned(
                    bottom: 12.h,
                    right: 70.h,
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
          ),
        ],
      ),
    );
  }
}
