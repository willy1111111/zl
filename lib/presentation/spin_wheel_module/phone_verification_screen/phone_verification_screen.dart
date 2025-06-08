import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/phone_verification_controller.dart';

class PhoneVerificationScreen extends GetWidget<PhoneVerificationController> {
  const PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: _buildVerificationDialog(),
        ),
      ),
    );
  }

  Widget _buildVerificationDialog() {
    return Container(
      width: 345.h,
      height: 262.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(
          color: appTheme.colorFF2C35,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(12.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          SizedBox(height: 16.h),
          _buildPhoneNumberInput(),
          SizedBox(height: 12.h),
          _buildSmsVerificationRow(),
          SizedBox(height: 24.h),
          _buildCompleteVerificationButton(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return SizedBox(
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
        border: Border.all(
          color: appTheme.colorFF478A,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray400,
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
          Obx(() => Text(
                controller.phoneVerificationModel.value?.countryCode?.value ??
                    '+55',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              )),
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
                      controller.phoneVerificationModel.value?.phoneNumber
                              ?.value ??
                          '1234567890',
                      style: TextStyleHelper.instance.body14Bold,
                    )),
                Obx(() => Text(
                      controller.showCursor.value ? '|' : '',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFFF6D1),
                    )),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7BlueGray400,
            width: 18.h,
            height: 15.h,
            onTap: () => controller.onEditPhoneNumber(),
          ),
        ],
      ),
    );
  }

  Widget _buildSmsVerificationRow() {
    return Container(
      width: 321.h,
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(
          color: appTheme.colorFF4B55,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray40017x15,
            width: 15.h,
            height: 17.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Text(
              'SMS',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          _buildSendButton(),
        ],
      ),
    );
  }

  Widget _buildSendButton() {
    return GestureDetector(
      onTap: () => controller.onSendSms(),
      child: Container(
        width: 77.h,
        height: 34.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFABB6CA),
              appTheme.colorFF484E,
            ],
          ),
          border: Border.all(
            color: appTheme.colorFF6A73,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(4.h),
        ),
        child: Center(
          child: Text(
            'send',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ),
    );
  }

  Widget _buildCompleteVerificationButton() {
    return GestureDetector(
      onTap: () => controller.onCompleteVerification(),
      child: Container(
        width: 322.h,
        height: 50.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF363C41),
              appTheme.colorFF2B30,
            ],
          ),
          borderRadius: BorderRadius.circular(25.h),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4.h),
              blurRadius: 4.h,
              color: appTheme.blackCustom,
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Complete verification',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
        ),
      ),
    );
  }
}
