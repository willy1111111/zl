import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/phone_verification_screen_three_controller.dart';

class PhoneVerificationScreenThree
    extends GetWidget<PhoneVerificationScreenThreeController> {
  PhoneVerificationScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Container(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            Positioned(
              top: 240.h,
              left: 15.h,
              child: _buildVerificationModal(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationModal() {
    return Container(
      width: 345.h,
      height: 262.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(color: appTheme.colorFF2C35, width: 1.h),
        borderRadius: BorderRadius.circular(12.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          SizedBox(height: 16.h),
          _buildPhoneNumberInput(),
          SizedBox(height: 16.h),
          _buildSmsVerification(),
          SizedBox(height: 24.h),
          _buildCompleteVerificationButton(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      width: 232.h,
      height: 35.h,
      child: Text(
        'Receive rewards after completing mobilephone verification',
        style: TextStyleHelper.instance.body14Bold.copyWith(height: 1.14),
      ),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      width: 321.h,
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF478A, width: 1.h),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            width: 13.h,
            height: 17.h,
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            width: 26.h,
            height: 18.h,
          ),
          SizedBox(width: 8.h),
          Text(
            '+55',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.17),
          ),
          SizedBox(width: 8.h),
          Container(
            width: 1.h,
            height: 24.h,
            color: appTheme.colorFF4453,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Row(
              children: [
                Obx(() => Text(
                      controller.phoneVerificationModel.value.phoneNumber
                              ?.value ??
                          '1234',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(height: 1.21),
                    )),
                Text(
                  '|',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFF6D1, height: 1.21),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            width: 18.h,
            height: 15.h,
            onTap: () => controller.onEditPhoneNumber(),
          ),
        ],
      ),
    );
  }

  Widget _buildSmsVerification() {
    return GestureDetector(
      onTap: () => controller.onSmsButtonTapped(),
      child: Container(
        width: 321.h,
        height: 48.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF1B1C,
          border: Border.all(color: appTheme.colorFF4B55, width: 1.h),
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorBlueGray400,
              width: 17.h,
              height: 15.h,
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: Text(
                'SMS',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.21),
              ),
            ),
            Container(
              width: 77.h,
              height: 34.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF232B,
                border: Border.all(color: appTheme.colorFF6A73, width: 1.h),
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Center(
                child: Text(
                  'send',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF555E, height: 1.17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompleteVerificationButton() {
    return CustomButton(
      text: 'Complete verification',
      width: 322.h,
      height: 50.h,
      gradientColors: [Color(0xFF363C41), Color(0xFF2B3035)],
      textColor: appTheme.colorFF8089,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      borderRadius: 25,
      hasShadow: true,
      shadowColor: appTheme.blackCustom,
      onPressed: () => controller.onCompleteVerification(),
    );
  }
}
