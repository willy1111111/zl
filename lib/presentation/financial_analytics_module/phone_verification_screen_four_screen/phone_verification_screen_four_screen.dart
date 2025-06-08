import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/phone_verification_screen_four_controller.dart';

class PhoneVerificationScreenFour
    extends GetWidget<PhoneVerificationScreenFourController> {
  PhoneVerificationScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Center(
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(maxWidth: 375.h),
              child: _buildVerificationCard(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildVerificationCard() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(12.h),
        border: Border.all(color: appTheme.colorFF2C35),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderText(),
          SizedBox(height: 16.h),
          _buildPhoneNumberInput(),
          SizedBox(height: 16.h),
          _buildSmsVerification(),
          SizedBox(height: 16.h),
          _buildVerificationCodeInput(),
          SizedBox(height: 16.h),
          _buildSecurityInformation(),
          SizedBox(height: 16.h),
          _buildCompleteVerificationButton(),
        ],
      ),
    );
  }

  Widget _buildHeaderText() {
    return Obx(() => Text(
          controller.phoneVerificationModel.value?.headerText?.value ??
              'Receive rewards after completing mobilephone verification',
          style: TextStyleHelper.instance.body14Bold2.copyWith(height: 1.14),
        ));
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF478A),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          _buildCountrySection(),
          SizedBox(width: 12.h),
          Expanded(
            child: _buildPhoneInput(),
          ),
        ],
      ),
    );
  }

  Widget _buildCountrySection() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVector,
          width: 16.h,
          height: 12.h,
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
          width: 24.h,
          height: 16.h,
        ),
        SizedBox(width: 8.h),
        Container(
          width: 1.h,
          height: 24.h,
          color: appTheme.colorFF4453,
        ),
        SizedBox(width: 8.h),
        Obx(() => Text(
              controller.phoneVerificationModel.value?.countryCode?.value ??
                  '+55',
              style:
                  TextStyleHelper.instance.body12Bold2.copyWith(height: 1.17),
            )),
      ],
    );
  }

  Widget _buildPhoneInput() {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Obx(() => Text(
                    controller
                            .phoneVerificationModel.value?.phoneNumber?.value ??
                        '1234',
                    style: TextStyleHelper.instance.body14Bold2
                        .copyWith(height: 1.21),
                  )),
              Text(
                '|',
                style: TextStyleHelper.instance.body14Bold2
                    .copyWith(color: appTheme.colorFFF6D1, height: 1.21),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.img7,
          width: 16.h,
          height: 16.h,
        ),
      ],
    );
  }

  Widget _buildSmsVerification() {
    return GestureDetector(
      onTap: () => controller.onGetCodePressed(),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1B1C,
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(color: appTheme.colorFF4B55),
        ),
        padding: EdgeInsets.all(12.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray400,
              width: 16.h,
              height: 16.h,
            ),
            SizedBox(width: 12.h),
            Obx(() => Text(
                  controller.phoneVerificationModel.value?.smsText?.value ??
                      'SMS',
                  style: TextStyleHelper.instance.body14Bold2
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                )),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF232B,
                borderRadius: BorderRadius.circular(4.h),
                border: Border.all(color: appTheme.colorFF6A73),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
              child: Obx(() => Text(
                    controller
                            .phoneVerificationModel.value?.getCodeText?.value ??
                        'Get code',
                    style: TextStyleHelper.instance.body12Bold2
                        .copyWith(color: appTheme.colorFF555E, height: 1.17),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationCodeInput() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF4B55),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12110,
            width: 12.h,
            height: 16.h,
          ),
          SizedBox(width: 12.h),
          Obx(() => Text(
                controller.phoneVerificationModel.value?.verificationCodeText
                        ?.value ??
                    'verification code',
                style: TextStyleHelper.instance.body14Bold2
                    .copyWith(color: appTheme.colorFF8089, height: 1.21),
              )),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgGroup12106,
            width: 80.h,
            height: 32.h,
          ),
        ],
      ),
    );
  }

  Widget _buildSecurityInformation() {
    return Container(
      height: 80.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnion,
            width: double.infinity,
            height: 80.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 20.h,
            left: 8.h,
            right: 16.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightGreenA700,
                  width: 12.h,
                  height: 12.h,
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Obx(() => Text(
                        controller.phoneVerificationModel.value?.securityText
                                ?.value ??
                            'The mobile number will be used to check that your money is safe when you try to withdraw',
                        style: TextStyleHelper.instance.body14Bold2
                            .copyWith(height: 1.29),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompleteVerificationButton() {
    return Obx(
      () => CustomButton(
        text:
            controller.phoneVerificationModel.value?.completeButtonText?.value ??
                'Complete verification',
        gradientColors: [Color(0xFF363C41), Color(0xFF2B3035)],
        textColor: appTheme.colorFF8089,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
        isFullWidth: true,
        borderRadius: 24.h,
        hasShadow: true,
      onPressed: () => controller.onCompleteVerificationPressed(),
    );
  }
}
