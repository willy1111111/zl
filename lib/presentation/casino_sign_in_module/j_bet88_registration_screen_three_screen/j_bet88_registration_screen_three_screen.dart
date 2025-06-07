import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_field.dart';
import './controller/j_bet88_registration_screen_three_controller.dart';

class JBet88RegistrationScreenThree
    extends GetWidget<JBet88RegistrationScreenThreeController> {
  const JBet88RegistrationScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1A1C,
        appBar: CustomAppBar(
            title: 'Register',
            showBackButton: true,
            backButtonIcon: ImageConstant.imgStrokeWhiteA700,
            onBackPressed: () => Get.back(),
            height: 60.h,
            titleStyle: TextStyleHelper.instance.title22BoldArial),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(children: [
              SizedBox(height: 28.h),
              _buildLogoSection(),
              SizedBox(height: 32.h),
              _buildRegistrationForm(),
              SizedBox(height: 32.h),
              _buildFooterLinks(),
              SizedBox(height: 32.h),
              _buildDividerSection(),
              SizedBox(height: 24.h),
              _buildGoogleLoginButton(),
              SizedBox(height: 80.h),
            ])));
  }

  Widget _buildLogoSection() {
    return Center(
        child: CustomImageView(
            imagePath: ImageConstant.imgLogowj931, height: 47.h, width: 129.h));
  }

  Widget _buildRegistrationForm() {
    return Column(children: [
      _buildPhoneNumberInput(),
      SizedBox(height: 16.h),
      _buildPasswordInput(),
      SizedBox(height: 16.h),
      _buildVerificationCodeInput(),
      SizedBox(height: 24.h),
      _buildAgreementCheckboxes(),
      SizedBox(height: 32.h),
      _buildRegisterButton(),
    ]);
  }

  Widget _buildPhoneNumberInput() {
    return Container(
        height: 48.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF478A),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray400,
              height: 13.h,
              width: 17.h),
          SizedBox(width: 12.h),
          CustomImageView(
              imagePath:
                  ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
              height: 18.h,
              width: 26.h,
              radius: BorderRadius.circular(2.h)),
          SizedBox(width: 8.h),
          Text('+55',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF8089)),
          SizedBox(width: 8.h),
          Container(width: 1.h, height: 24.h, color: appTheme.colorFF4453),
          SizedBox(width: 12.h),
          Expanded(
              child: Row(children: [
            Obx(() => Text(controller.phoneNumber!.value ?? '1234567890',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.whiteCustom))),
            Text('|',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF85D4)),
          ])),
          GestureDetector(
              onTap: () => controller.editPhoneNumber(),
              child: CustomImageView(
                  imagePath: ImageConstant.img7, height: 18.h, width: 15.h)),
        ]));
  }

  Widget _buildPasswordInput() {
    return CustomTextField(
        hintText: 'Password',
        leadingIcon: ImageConstant.img1BlueGray400,
        trailingIcon: ImageConstant.img3,
        isPassword: true,
        controller: controller.passwordController,
        onTrailingIconTap: () => controller.togglePasswordVisibility());
  }

  Widget _buildVerificationCodeInput() {
    return CustomTextField(
        hintText: 'verification code',
        leadingIcon: ImageConstant.imgGroup12110,
        trailingIcon: ImageConstant.imgGroup12106,
        controller: controller.verificationCodeController,
        onTrailingIconTap: () => controller.sendVerificationCode());
  }

  Widget _buildAgreementCheckboxes() {
    return Column(children: [
      _buildUserAgreementCheckbox(),
      SizedBox(height: 16.h),
      _buildMarketingCheckbox(),
    ]);
  }

  Widget _buildUserAgreementCheckbox() {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      GestureDetector(
          onTap: () => controller.toggleUserAgreement(),
          child: Container(
              width: 16.h,
              height: 16.h,
              decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  border: Border.all(color: appTheme.colorFF4B55),
                  borderRadius: BorderRadius.circular(2.h)),
              child: Obx(() =>
                  (controller.isUserAgreementAccepted!.value ?? false)
                      ? CustomImageView(
                          imagePath: ImageConstant.imgVectorLightGreenA700,
                          height: 16.h,
                          width: 11.h)
                      : SizedBox.shrink()))),
      SizedBox(width: 12.h),
      Expanded(
          child: RichText(
              text: TextSpan(children: [
        TextSpan(
            text: 'l agree to the',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089, height: 1.14)),
        TextSpan(
            text: ' ',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.whiteCustom, height: 1.14)),
        TextSpan(
            text: 'User Agreement & confirm l am at least 18 years old',
            style: TextStyleHelper.instance.body14BoldArial.copyWith(
                color: appTheme.colorFF85D4,
                height: 1.14,
                decoration: TextDecoration.underline)),
      ]))),
    ]);
  }

  Widget _buildMarketingCheckbox() {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      GestureDetector(
          onTap: () => controller.toggleMarketingAgreement(),
          child: Container(
              width: 16.h,
              height: 16.h,
              decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  border: Border.all(color: appTheme.colorFF4B55),
                  borderRadius: BorderRadius.circular(2.h)),
              child: Obx(() =>
                  (controller.isMarketingAgreementAccepted!.value ?? false)
                      ? CustomImageView(
                          imagePath: ImageConstant.imgVectorLightGreenA700,
                          height: 16.h,
                          width: 11.h)
                      : SizedBox.shrink()))),
      SizedBox(width: 12.h),
      Expanded(
          child: Text('l agree to receive marketing promotions from Jbet88',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089, height: 1.14))),
    ]);
  }

  Widget _buildRegisterButton() {
    return Container(
        width: double.maxFinite,
        height: 50.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF363C41), Color(0xFF2B3035)]),
            borderRadius: BorderRadius.circular(25.h),
            boxShadow: [
              BoxShadow(
                  color: appTheme.blackCustom,
                  offset: Offset(0, 4.h),
                  blurRadius: 4.h),
            ]),
        child: ElevatedButton(
            onPressed: () => controller.register(),
            style: ElevatedButton.styleFrom(
                backgroundColor: appTheme.transparentCustom,
                shadowColor: appTheme.transparentCustom,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.h))),
            child: Text('Register',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.colorFF8089))));
  }

  Widget _buildFooterLinks() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
          onTap: () => controller.forgotPassword(),
          child: Text('Forgot password',
              style: TextStyleHelper.instance.body12BlackArial
                  .copyWith(color: appTheme.colorFF85D4))),
      GestureDetector(
          onTap: () => controller.navigateToLogin(),
          child: Text('Login',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFFC0C8))),
    ]);
  }

  Widget _buildDividerSection() {
    return Row(children: [
      Expanded(child: Container(height: 1.h, color: appTheme.colorFF4453)),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Text('OR',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFFABB6))),
      Expanded(child: Container(height: 1.h, color: appTheme.colorFF4453)),
    ]);
  }

  Widget _buildGoogleLoginButton() {
    return Container(
        width: double.maxFinite,
        height: 42.h,
        child: ElevatedButton(
            onPressed: () => controller.loginWithGoogle(),
            style: ElevatedButton.styleFrom(
                backgroundColor: appTheme.colorFF3F6B,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h))),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 28.h,
                  height: 28.h,
                  decoration: BoxDecoration(
                      color: appTheme.whiteCustom,
                      borderRadius: BorderRadius.circular(14.h)),
                  child: Center(
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGooglelogo98082,
                          height: 21.h,
                          width: 21.h))),
              SizedBox(width: 12.h),
              Text('Login with Google+',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom)),
            ])));
  }
}
