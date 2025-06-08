import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_field.dart';
import './controller/forgot_transaction_password_screen_two_controller.dart';

class ForgotTransactionPasswordScreenTwo
    extends GetWidget<ForgotTransactionPasswordScreenTwoController> {
  const ForgotTransactionPasswordScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDescriptionText(),
            SizedBox(height: 25.h),
            _buildPhoneNumberInput(),
            SizedBox(height: 20.h),
            _buildSMSVerification(),
            SizedBox(height: 20.h),
            _buildNewPasswordInput(),
            SizedBox(height: 20.h),
            _buildConfirmPasswordInput(),
            Spacer(),
            _buildConfirmButton(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: appTheme.colorFF1B1C,
      elevation: 2,
      shadowColor: appTheme.blackCustom,
      leadingWidth: 50.h,
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          margin: EdgeInsets.only(left: 15.h),
          child: CustomImageView(
            imagePath: ImageConstant.img,
            height: 11.h,
            width: 11.h,
            alignment: Alignment.center,
          ),
        ),
      ),
      title: Text(
        'Forgot transaction password',
        style: TextStyleHelper.instance.title16BoldArial
            .copyWith(color: appTheme.whiteCustom),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10.h),
          child: CustomImageView(
            imagePath: ImageConstant.img1,
            height: 13.h,
            width: 356.h,
          ),
        ),
      ],
    );
  }

  Widget _buildDescriptionText() {
    return Text(
      'Please retrieve your password in the following ways',
      style: TextStyleHelper.instance.body14BoldArial
          .copyWith(color: appTheme.colorFF8089),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2C2F,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 17.h,
            width: 13.h,
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            height: 18.h,
            width: 26.h,
          ),
          SizedBox(width: 8.h),
          Text(
            '+55',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(width: 8.h),
          Container(
            width: 1.h,
            height: 24.h,
            color: appTheme.colorFF4453,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => CustomTextField(
                  controller: controller.phoneController,
                  hintText: 'Phone number',
                  onChanged: (value) => controller.phoneNumber.value = value,
                  textStyle: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089),
                  fillColor: appTheme.transparentCustom,
                  borderRadius: 0,
                  contentPadding: EdgeInsets.zero,
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildSMSVerification() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1BlueGray400,
            height: 17.h,
            width: 15.h,
          ),
          SizedBox(width: 12.h),
          Text(
            'SMS',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
          Spacer(),
          GestureDetector(
            onTap: () => controller.sendSMSCode(),
            child: Container(
              height: 34.h,
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                ),
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Center(
                child: Text(
                  'send',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewPasswordInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray40017x14,
            height: 17.h,
            width: 14.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => CustomTextField(
                  controller: controller.newPasswordController,
                  hintText: 'Set new transaction password',
                  isPassword: !(controller.isNewPasswordVisible.value ?? false),
                  onChanged: (value) => controller.newPassword.value = value,
                  textStyle: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089),
                  fillColor: appTheme.transparentCustom,
                  borderRadius: 0,
                  contentPadding: EdgeInsets.zero,
                )),
          ),
          GestureDetector(
            onTap: () => controller.toggleNewPasswordVisibility(),
            child: CustomImageView(
              imagePath: ImageConstant.img8,
              height: 13.h,
              width: 20.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmPasswordInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray40017x14,
            height: 17.h,
            width: 14.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => CustomTextField(
                  controller: controller.confirmPasswordController,
                  hintText: 'Confirm Password',
                  isPassword:
                      !(controller.isConfirmPasswordVisible.value ?? false),
                  onChanged: (value) =>
                      controller.confirmPassword.value = value,
                  textStyle: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089),
                  fillColor: appTheme.transparentCustom,
                  borderRadius: 0,
                  contentPadding: EdgeInsets.zero,
                )),
          ),
          GestureDetector(
            onTap: () => controller.toggleConfirmPasswordVisibility(),
            child: CustomImageView(
              imagePath: ImageConstant.img8,
              height: 13.h,
              width: 20.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Container(
      width: 322.h,
      height: 50.h,
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      child: CustomButton(
        text: 'Confirm',
        onPressed: () => controller.confirmPasswordReset(),
        variant: CustomButtonVariant.primary,
        backgroundColor: appTheme.colorFF363C,
        textColor: appTheme.colorFF8089,
        borderRadius: 25,
        hasShadow: true,
      ),
    );
  }
}
