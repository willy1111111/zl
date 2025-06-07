import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_field.dart';
import './controller/j_bet88_login_screen_two_controller.dart';

class JBet88LoginScreenTwo extends GetWidget<JBet88LoginScreenTwoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1A1C,
        appBar: CustomAppBar(
            title: 'Login',
            showBackButton: true,
            backButtonIcon: ImageConstant.imgStrokeWhiteA700,
            onBackPressed: () => Get.back(),
            height: 60.h,
            centerTitle: true),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(children: [
              // Background Images
              Positioned(
                  left: 2.h,
                  top: 513.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgImage36,
                      height: 325.h,
                      width: 373.h)),

              // Gradient Overlays
              Positioned(
                  left: 0.h,
                  top: 513.h,
                  child: Container(
                      width: 375.h,
                      height: 129.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color(0xFF1E2024),
                            appTheme.color00191B,
                          ])))),

              Positioned(
                  left: 0.h,
                  top: 805.h,
                  child: Container(
                      width: 375.h,
                      height: 33.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Color(0xFF1E2024),
                            appTheme.colorFF1E20,
                          ])))),

              // Additional Background Images
              Positioned(
                  left: 2.h,
                  top: 557.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgImage37,
                      height: 255.h,
                      width: 373.h)),

              Positioned(
                  left: 2.h,
                  top: 557.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgImage38,
                      height: 255.h,
                      width: 373.h)),

              Positioned(
                  left: 2.h,
                  top: 557.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgImage39,
                      height: 255.h,
                      width: 373.h)),

              // Logo
              Positioned(
                  left: 123.h,
                  top: 88.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLogowj931,
                      height: 47.h,
                      width: 129.h)),

              // Phone Number Input
              Positioned(
                  left: 20.h,
                  top: 161.h,
                  child: Container(
                      width: 335.h,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: appTheme.colorFF1B1C,
                          border: Border.all(
                              color: appTheme.colorFF478A, width: 1.h),
                          borderRadius: BorderRadius.circular(8.h)),
                      child: Row(children: [
                        SizedBox(width: 12.h),
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorBlueGray400,
                            height: 13.h,
                            width: 17.h),
                        SizedBox(width: 12.h),
                        CustomImageView(
                            imagePath: ImageConstant
                                .imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
                            height: 18.h,
                            width: 26.h),
                        SizedBox(width: 8.h),
                        Text('+55',
                            style: TextStyleHelper.instance.body12BoldArial
                                .copyWith(color: appTheme.colorFF8089)),
                        SizedBox(width: 8.h),
                        Container(
                            width: 1.h,
                            height: 24.h,
                            color: appTheme.colorFF4453),
                        SizedBox(width: 12.h),
                        Expanded(
                            child: Row(children: [
                          Obx(() => Text(
                              controller.phoneNumber!.value ?? '1234567890',
                              style: TextStyleHelper.instance.body14BoldArial
                                  .copyWith(color: appTheme.whiteCustom))),
                          Text('|',
                              style: TextStyleHelper.instance.body14BoldArial
                                  .copyWith(color: appTheme.colorFF85D4)),
                        ])),
                        CustomImageView(
                            imagePath: ImageConstant.img7,
                            height: 18.h,
                            width: 15.h),
                        SizedBox(width: 12.h),
                      ]))),

              // Password Input
              Positioned(
                  left: 20.h,
                  top: 221.h,
                  child: Container(
                      width: 335.h,
                      height: 48.h,
                      child: CustomTextField(
                          hintText: '**********',
                          leadingIcon: ImageConstant.img1BlueGray400,
                          trailingIcon: ImageConstant.img3,
                          isPassword: true,
                          controller: controller.passwordController,
                          onTrailingIconTap: () =>
                              controller.togglePasswordVisibility()))),

              // Verification Code Input
              Positioned(
                  left: 20.h,
                  top: 281.h,
                  child: Container(
                      width: 335.h,
                      height: 48.h,
                      child: CustomTextField(
                          hintText: 'verification code',
                          leadingIcon: ImageConstant.imgGroup12110,
                          trailingIcon: ImageConstant.imgGroup12106,
                          controller: controller.verificationCodeController))),

              // Remember Password Checkbox
              Positioned(
                  left: 24.h,
                  top: 342.h,
                  child: GestureDetector(
                      onTap: () => controller.toggleRememberPassword(),
                      child: Row(children: [
                        Container(
                            width: 16.h,
                            height: 16.h,
                            decoration: BoxDecoration(
                                color: appTheme.colorFF2528,
                                border: Border.all(
                                    color: appTheme.colorFF4B55, width: 1.h),
                                borderRadius: BorderRadius.circular(2.h)),
                            child: Obx(() => controller
                                        .isRememberPasswordChecked.value ??
                                    false
                                ? CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorLightGreenA700,
                                    height: 11.h,
                                    width: 16.h)
                                : SizedBox.shrink())),
                        SizedBox(width: 22.h),
                        Text('ReTeams password',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.colorFF8089)),
                      ]))),

              // Login Button
              Positioned(
                  left: 27.h,
                  top: 389.h,
                  child: CustomButton(
                      text: 'Login',
                      variant: CustomButtonVariant.gradient,
                      width: 322.h,
                      onPressed: () => controller.onLoginPressed())),

              // Forgot Password & Register
              Positioned(
                  left: 40.h,
                  top: 449.h,
                  child: Container(
                      width: 295.h,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () =>
                                    controller.onForgotPasswordPressed(),
                                child: Text('Forgot password',
                                    style: TextStyleHelper
                                        .instance.body12BlackArial
                                        .copyWith(
                                            color: appTheme.colorFF85D4))),
                            GestureDetector(
                                onTap: () => controller.onRegisterPressed(),
                                child: Text('Register',
                                    style: TextStyleHelper
                                        .instance.body14BoldArial
                                        .copyWith(
                                            color: appTheme.colorFFC0C8))),
                          ]))),

              // OR Divider
              Positioned(
                  left: 15.h,
                  top: 513.h,
                  child: Container(
                      width: 345.h,
                      child: Row(children: [
                        Container(
                            width: 148.h,
                            height: 1.h,
                            color: appTheme.colorFF4453),
                        SizedBox(width: 16.h),
                        Text('OR',
                            style: TextStyleHelper.instance.body12BoldArial
                                .copyWith(color: appTheme.colorFFABB6)),
                        SizedBox(width: 16.h),
                        Container(
                            width: 148.h,
                            height: 1.h,
                            color: appTheme.colorFF4453),
                      ]))),

              // Social Login Buttons
              Positioned(
                  left: 20.h,
                  top: 550.h,
                  child: Row(children: [
                    // Google Login Button
                    GestureDetector(
                        onTap: () => controller.onGoogleLoginPressed(),
                        child: Container(
                            width: 162.h,
                            height: 42.h,
                            decoration: BoxDecoration(
                                color: appTheme.whiteCustom,
                                borderRadius: BorderRadius.circular(8.h)),
                            child: Row(children: [
                              SizedBox(width: 40.h),
                              Container(
                                  width: 28.h,
                                  height: 28.h,
                                  decoration: BoxDecoration(
                                      color: appTheme.whiteCustom,
                                      borderRadius:
                                          BorderRadius.circular(14.h)),
                                  child: Center(
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGooglelogo98082,
                                          height: 21.h,
                                          width: 21.h))),
                              SizedBox(width: 12.h),
                              Text('Google',
                                  style: TextStyleHelper
                                      .instance.body12BoldArial
                                      .copyWith(color: appTheme.whiteCustom)),
                            ]))),

                    SizedBox(width: 16.h),

                    // Telegram Login Button
                    GestureDetector(
                        onTap: () => controller.onTelegramLoginPressed(),
                        child: Container(
                            width: 162.h,
                            height: 42.h,
                            decoration: BoxDecoration(
                                color: appTheme.whiteCustom,
                                borderRadius: BorderRadius.circular(8.h)),
                            child: Row(children: [
                              SizedBox(width: 34.h),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup12024,
                                  height: 28.h,
                                  width: 28.h),
                              SizedBox(width: 12.h),
                              Text('Telegram',
                                  style: TextStyleHelper
                                      .instance.body12BoldArial
                                      .copyWith(color: appTheme.whiteCustom)),
                            ]))),
                  ])),

              // Join Community Section
              Positioned(
                  left: 127.h,
                  top: 629.h,
                  child: Text('Join our community',
                      style: TextStyleHelper.instance.body14Arial
                          .copyWith(color: appTheme.whiteCustom))),

              Positioned(
                  left: 135.h,
                  top: 660.h,
                  child: GestureDetector(
                      onTap: () => controller.onJoinTelegramPressed(),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSubtractWhiteA700,
                            height: 36.h,
                            width: 36.h),
                        SizedBox(width: 12.h),
                        Text('Telegram',
                            style: TextStyleHelper.instance.body14Arial
                                .copyWith(color: appTheme.colorFF8089)),
                      ]))),
            ])));
  }
}
