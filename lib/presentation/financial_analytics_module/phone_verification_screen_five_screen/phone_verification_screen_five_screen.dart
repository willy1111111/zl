import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/phone_verification_screen_five_controller.dart';

class PhoneVerificationScreenFive
    extends GetWidget<PhoneVerificationScreenFiveController> {
  PhoneVerificationScreenFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(maxWidth: 400.h),
            child: _buildVerificationDialog(),
          ),
        ),
      ),
    );
  }

  Widget _buildVerificationDialog() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(color: appTheme.colorFF2C35),
        borderRadius: BorderRadius.circular(12.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderText(),
          SizedBox(height: 16.h),
          _buildPhoneNumberInput(),
          SizedBox(height: 8.h),
          _buildPhoneErrorMessage(),
          SizedBox(height: 16.h),
          _buildSmsVerificationSection(),
          SizedBox(height: 8.h),
          _buildSmsErrorMessage(),
          SizedBox(height: 16.h),
          _buildVerificationCodeInput(),
          SizedBox(height: 8.h),
          _buildCodeErrorMessage(),
          SizedBox(height: 16.h),
          _buildSecurityInformation(),
          SizedBox(height: 24.h),
          _buildCompleteVerificationButton(),
        ],
      ),
    );
  }

  Widget _buildHeaderText() {
    return Text(
      'Receive rewards after completing mobilephone verification',
      style: TextStyleHelper.instance.body14Bold.copyWith(height: 1.2),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF478A),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 12.h,
            width: 16.h,
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            height: 16.h,
            width: 24.h,
          ),
          SizedBox(width: 8.h),
          Text(
            '+55',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(width: 8.h),
          Container(
            width: 1.h,
            height: 24.h,
            color: appTheme.colorFF4453,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Row(
              children: [
                Obx(() => Text(
                      controller.phoneVerificationScreenFiveModel.value
                              ?.phoneNumber?.value ??
                          '1234567890',
                      style: TextStyleHelper.instance.body14Bold,
                    )),
                Obx(() => Opacity(
                      opacity: controller.cursorVisible.value ? 1.0 : 0.0,
                      child: Text(
                        '|',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.colorFFF6D1),
                      ),
                    )),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            height: 16.h,
            width: 16.h,
            onTap: () => controller.onEditPhonePressed(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneErrorMessage() {
    return Obx(() => controller.phoneVerificationScreenFiveModel.value
                ?.showPhoneError?.value ??
            false
        ? Text(
            controller.phoneVerificationScreenFiveModel.value?.phoneErrorMessage
                    ?.value ??
                'The mobile num is not yalid',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFF652),
          )
        : SizedBox.shrink());
  }

  Widget _buildSmsVerificationSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray400,
                height: 16.h,
                width: 16.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'SMS',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF363C41), Color(0xFF2B3035)],
              ),
              borderRadius: BorderRadius.circular(20.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
            child: Obx(() => Text(
                  '${controller.countdownTimer.value}s',
                  style: TextStyleHelper.instance.body14Bold,
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildSmsErrorMessage() {
    return Obx(() => controller
                .phoneVerificationScreenFiveModel.value?.showSmsError?.value ??
            false
        ? Text(
            controller.phoneVerificationScreenFiveModel.value?.smsErrorMessage
                    ?.value ??
                'Please enter a valid verification code',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFF652),
          )
        : SizedBox.shrink());
  }

  Widget _buildVerificationCodeInput() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup12110,
                height: 16.h,
                width: 12.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'verification code',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup12106,
            height: 32.h,
            width: 80.h,
            onTap: () => controller.onCaptchaPressed(),
          ),
        ],
      ),
    );
  }

  Widget _buildCodeErrorMessage() {
    return Obx(() => controller
                .phoneVerificationScreenFiveModel.value?.showCodeError?.value ??
            false
        ? Text(
            controller.phoneVerificationScreenFiveModel.value?.codeErrorMessage
                    ?.value ??
                'Please enter a valid verification code',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFFF652),
          )
        : SizedBox.shrink());
  }

  Widget _buildSecurityInformation() {
    return Container(
      height: 80.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            height: 80.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 20.h,
            left: 8.h,
            right: 8.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightGreenA700,
                  height: 12.h,
                  width: 12.h,
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Text(
                    'The mobile number will be used to check that your money is safe when you try to withdraw',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(height: 1.3),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompleteVerificationButton() {
    return CustomButton(
      text: 'Complete verification',
      gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
      textColor: appTheme.whiteCustom,
      fontSize: 16.fSize,
      fontWeight: FontWeight.bold,
      isFullWidth: true,
      borderRadius: 24.h,
      onPressed: () => controller.onCompleteVerificationPressed(),
    );
  }
}
