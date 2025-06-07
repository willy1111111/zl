import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/phone_verification_screen_two_controller.dart';

class PhoneVerificationScreenTwo
    extends GetWidget<PhoneVerificationScreenTwoController> {
  const PhoneVerificationScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.blackCustom,
        body: SafeArea(
            child: Center(
                child: Padding(
                    padding: EdgeInsets.all(16.h),
                    child: Container(
                        width: double.infinity,
                        constraints: BoxConstraints(maxWidth: 400.h),
                        child: _buildVerificationDialog())))));
  }

  Widget _buildVerificationDialog() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            border: Border.all(color: appTheme.colorFF2C35),
            borderRadius: BorderRadius.circular(12.h)),
        padding: EdgeInsets.all(16.h),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          _buildTitle(),
          SizedBox(height: 16.h),
          _buildPhoneNumberInput(),
          SizedBox(height: 16.h),
          _buildSmsVerificationRow(),
          SizedBox(height: 16.h),
          _buildVerificationCodeInput(),
          SizedBox(height: 16.h),
          _buildWarningSection(),
          SizedBox(height: 16.h),
          _buildCompleteVerificationButton(),
        ]));
  }

  Widget _buildTitle() {
    return Text('Receive rewards after completing mobilephone verification',
        style: TextStyleHelper.instance.body14Bold.copyWith(height: 1.2));
  }

  Widget _buildPhoneNumberInput() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF478A),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.all(12.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector, height: 12.h, width: 16.h),
          SizedBox(width: 12.h),
          CustomImageView(
              imagePath:
                  ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
              height: 16.h,
              width: 24.h),
          SizedBox(width: 12.h),
          Text('+55',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089)),
          SizedBox(width: 12.h),
          Container(width: 24.h, height: 1.h, color: appTheme.colorFF4453),
          SizedBox(width: 12.h),
          Expanded(
              child: Row(children: [
            Obx(() => Text(controller.phoneNumber!.value ?? '1234567890',
                style: TextStyleHelper.instance.body14Bold)),
            Text('|',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFF6D1)),
          ])),
          CustomImageView(
              imagePath: ImageConstant.img7,
              height: 16.h,
              width: 16.h,
              onTap: () => controller.onEditPhoneNumber()),
        ]));
  }

  Widget _buildSmsVerificationRow() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.all(12.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray400,
              height: 16.h,
              width: 16.h),
          SizedBox(width: 12.h),
          Text('SMS',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089)),
          Spacer(),
          Obx(() => CustomButton(
              text: controller.getCodeButtonText!.value ?? 'Get code',
              backgroundColor: appTheme.colorFF76CD,
              textColor: appTheme.whiteCustom,
              fontSize: 12.fSize,
              fontWeight: FontWeight.bold,
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
              borderRadius: 4.h,
              onPressed: () => controller.onGetCode())),
        ]));
  }

  Widget _buildVerificationCodeInput() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.all(12.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup12110,
              height: 12.h,
              width: 16.h),
          SizedBox(width: 12.h),
          Text('verification code',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgGroup12106,
              height: 32.h,
              width: 80.h),
        ]));
  }

  Widget _buildWarningSection() {
    return Container(
        height: 80.h,
        child: Stack(children: [
          CustomImageView(
              imagePath: ImageConstant.imgUnion,
              height: 80.h,
              width: double.infinity,
              fit: BoxFit.cover),
          Positioned(
              top: 20.h,
              left: 8.h,
              right: 8.h,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVectorLightGreenA700,
                    height: 12.h,
                    width: 12.h,
                    margin: EdgeInsets.only(top: 4.h)),
                SizedBox(width: 8.h),
                Expanded(
                    child: Text(
                        'The mobile number will be used to check that your money is safe when you try to withdraw',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(height: 1.2))),
              ])),
        ]));
  }

  Widget _buildCompleteVerificationButton() {
    return Obx(() => CustomButton(
        text:
            controller.verificationButtonText!.value ?? 'Complete verification',
        gradientColors: [Color(0xFF363C41), Color(0xFF2B3035)],
        textColor: controller.isVerificationComplete!.value ?? false
            ? Color(0xFF85D420)
            : appTheme.colorFF8089,
        fontSize: 16.fSize,
        fontWeight: FontWeight.bold,
        isFullWidth: true,
        borderRadius: 24.h,
        hasShadow: true,
        onPressed: () => controller.onCompleteVerification()));
  }
}
