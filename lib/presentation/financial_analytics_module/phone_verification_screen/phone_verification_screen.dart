import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/phone_verification_controller.dart';

class PhoneVerificationScreen extends GetWidget<PhoneVerificationController> {
  PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Center(
        child: Container(
          width: 375.h,
          height: 812.h,
          child: Stack(
            children: [
              Positioned(
                left: 15.h,
                top: 240.h,
                child: _buildVerificationDialog(),
              ),
            ],
          ),
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
        border: Border.all(color: appTheme.colorFF2C35, width: 1.h),
        borderRadius: BorderRadius.circular(12.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleSection(),
          SizedBox(height: 16.h),
          _buildPhoneNumberInput(),
          SizedBox(height: 16.h),
          _buildSmsVerificationSection(),
          SizedBox(height: 16.h),
          _buildCompleteVerificationButton(),
        ],
      ),
    );
  }

  Widget _buildTitleSection() {
    return Container(
      width: 232.h,
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
            height: 17.h,
            width: 13.h,
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            height: 18.h,
            width: 26.h,
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
                Obx(() => Visibility(
                      visible: controller.isTyping.value,
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
            height: 15.h,
            width: 18.h,
            onTap: () => controller.onEditPhoneNumber(),
          ),
        ],
      ),
    );
  }

  Widget _buildSmsVerificationSection() {
    return Container(
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
            height: 15.h,
            width: 17.h,
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
    return Container(
      width: 77.h,
      height: 34.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        border: Border.all(color: appTheme.colorFF85D4, width: 1.h),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          onTap: () => controller.onSendSms(),
          borderRadius: BorderRadius.circular(4.h),
          child: Center(
            child: Text(
              'send',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCompleteVerificationButton() {
    return Container(
      width: 322.h,
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF363C41), Color(0xFF2B3035)],
        ),
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          onTap: () => controller.onCompleteVerification(),
          borderRadius: BorderRadius.circular(25.h),
          child: Center(
            child: Text(
              'Complete verification',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ),
      ),
    );
  }
}
