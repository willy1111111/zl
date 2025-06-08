import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/forgot_transaction_password_screen_three_controller.dart';

class ForgotTransactionPasswordScreenThree
    extends GetWidget<ForgotTransactionPasswordScreenThreeController> {
  ForgotTransactionPasswordScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(20.h, 15.h, 20.h, 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInstructionsText(),
                      SizedBox(height: 10.h),
                      _buildPhoneNumberInput(),
                      SizedBox(height: 5.h),
                      _buildPhoneValidationText(),
                      SizedBox(height: 35.h),
                      _buildSMSVerificationInput(),
                      SizedBox(height: 5.h),
                      _buildSMSValidationText(),
                      SizedBox(height: 35.h),
                      _buildNewPasswordInput(),
                      SizedBox(height: 5.h),
                      _buildPasswordValidationText(),
                      SizedBox(height: 35.h),
                      _buildConfirmPasswordInput(),
                      SizedBox(height: 5.h),
                      _buildConfirmPasswordValidationText(),
                      SizedBox(height: 55.h),
                      _buildConfirmButton(),
                    ]))));
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
        backgroundColor: appTheme.colorFF1B1C,
        elevation: 2,
        shadowColor: appTheme.blackCustom,
        leading: GestureDetector(
            onTap: () => Get.back(),
            child: Container(
                width: 44.h,
                height: 44.h,
                child: Center(
                    child: CustomImageView(
                        imagePath: ImageConstant.img,
                        height: 11.h,
                        width: 11.h)))),
        title: Text('Forgot transaction password',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.whiteCustom)),
        centerTitle: false,
        actions: [
          Positioned(
              top: 7.h,
              left: 10.h,
              child: CustomImageView(
                  imagePath: ImageConstant.img1, width: 356.h, height: 13.h)),
        ]);
  }

  Widget _buildInstructionsText() {
    return Text('Please retrieve your password in the following ways',
        style: TextStyleHelper.instance.body14BoldArial
            .copyWith(color: appTheme.colorFF8089));
  }

  Widget _buildPhoneNumberInput() {
    return Container(
        width: 335.h,
        height: 50.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF2C2F,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector, width: 13.h, height: 17.h),
          SizedBox(width: 24.h),
          CustomImageView(
              imagePath:
                  ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
              width: 26.h,
              height: 18.h,
              radius: BorderRadius.circular(2.h)),
          SizedBox(width: 8.h),
          Text('+55',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF8089)),
          SizedBox(width: 8.h),
          Container(width: 1.h, height: 24.h, color: appTheme.colorFF4453),
          SizedBox(width: 12.h),
          Expanded(
              child: TextFormField(
                  controller: controller.phoneController,
                  keyboardType: TextInputType.phone,
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFFABB6),
                  decoration: InputDecoration(
                      hintText: '123456789',
                      hintStyle: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFFABB6),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero))),
        ]));
  }

  Widget _buildPhoneValidationText() {
    return Obx(() => Text(controller.phoneValidationMessage!.value ?? '',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFFF652)));
  }

  Widget _buildSMSVerificationInput() {
    return Container(
        width: 335.h,
        height: 50.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.img1BlueGray400,
              width: 15.h,
              height: 17.h),
          SizedBox(width: 24.h),
          Expanded(
              child: Text('SMS',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089))),
          Obx(() => Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF363C41), Color(0xFF2B3035)]),
                  borderRadius: BorderRadius.circular(4.h)),
              padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 7.h),
              child: Text(controller.timerText!.value ?? '59s',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.whiteCustom)))),
        ]));
  }

  Widget _buildSMSValidationText() {
    return Obx(() => Text(controller.smsValidationMessage!.value ?? '',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFFF652)));
  }

  Widget _buildNewPasswordInput() {
    return Container(
        width: 335.h,
        height: 50.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray40017x14,
              width: 14.h,
              height: 17.h),
          SizedBox(width: 24.h),
          Expanded(
              child: Obx(() => TextFormField(
                  controller: controller.newPasswordController,
                  obscureText: controller.isNewPasswordHidden!.value ?? true,
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089),
                  decoration: InputDecoration(
                      hintText: 'Set New Transaction Password',
                      hintStyle: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF8089),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero)))),
          SizedBox(width: 12.h),
          GestureDetector(
              onTap: () => controller.toggleNewPasswordVisibility(),
              child: CustomImageView(
                  imagePath: ImageConstant.img8, width: 20.h, height: 13.h)),
        ]));
  }

  Widget _buildPasswordValidationText() {
    return Obx(() => Text(controller.passwordValidationMessage!.value ?? '',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFFF652)));
  }

  Widget _buildConfirmPasswordInput() {
    return Container(
        width: 335.h,
        height: 50.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray40017x14,
              width: 14.h,
              height: 17.h),
          SizedBox(width: 24.h),
          Expanded(
              child: Obx(() => TextFormField(
                  controller: controller.confirmPasswordController,
                  obscureText:
                      controller.isConfirmPasswordHidden!.value ?? true,
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089),
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF8089),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero)))),
          SizedBox(width: 12.h),
          GestureDetector(
              onTap: () => controller.toggleConfirmPasswordVisibility(),
              child: CustomImageView(
                  imagePath: ImageConstant.img8, width: 20.h, height: 13.h)),
        ]));
  }

  Widget _buildConfirmPasswordValidationText() {
    return Obx(() => Text(
        controller.confirmPasswordValidationMessage!.value ?? '',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFFF652)));
  }

  Widget _buildConfirmButton() {
    return Container(
        width: 322.h,
        height: 50.h,
        margin: EdgeInsets.symmetric(horizontal: 6.5.h),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF363C41), Color(0xFF2B3035)]),
            borderRadius: BorderRadius.circular(25.h),
            boxShadow: [
              BoxShadow(
                  color: appTheme.blackCustom.withAlpha(64),
                  offset: Offset(0, 4.h),
                  blurRadius: 4.h),
            ]),
        child: ElevatedButton(
            onPressed: () => controller.onConfirmPressed(),
            style: ElevatedButton.styleFrom(
                backgroundColor: appTheme.transparentCustom,
                shadowColor: appTheme.transparentCustom,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.h))),
            child: Text('Confirm',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.colorFF8089))));
  }
}
