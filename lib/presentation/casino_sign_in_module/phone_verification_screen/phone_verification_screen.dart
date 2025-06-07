import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/phone_verification_controller.dart';

class PhoneVerificationScreen extends GetWidget<PhoneVerificationController> {
  PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1A1C,
      appBar: CustomAppBar(
        title: '',
        showBackButton: true,
        backButtonIcon: ImageConstant.imgStrokeWhiteA700,
        onBackPressed: () => Get.back(),
        height: 60.h,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserEmailSection(),
            _buildAccountSetupText(),
            _buildPhoneNumberInput(),
            _buildSecurityInfoPanel(),
            _buildReferralCodeSection(),
            SizedBox(height: 100.h),
          ],
        ),
      ),
      bottomNavigationBar: _buildSignInButton(),
    );
  }

  Widget _buildUserEmailSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Dear',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.colorFF8089),
              ),
              SizedBox(width: 8.h),
              Obx(() => Text(
                    controller.phoneVerificationModel.value?.userEmail?.value ??
                        '123@gmail.com',
                    style: TextStyleHelper.instance.title18BoldArial,
                  )),
            ],
          ),
          SizedBox(height: 24.h),
          _buildProgressLine(),
        ],
      ),
    );
  }

  Widget _buildProgressLine() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 1.h,
          color: appTheme.colorFF282F,
        ),
        Positioned(
          left: 156.h,
          child: Container(
            width: 66.h,
            height: 2.h,
            color: appTheme.colorFF85D4,
          ),
        ),
      ],
    );
  }

  Widget _buildAccountSetupText() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Text(
        '*Finish setting up your account',
        style: TextStyleHelper.instance.body14BoldArial
            .copyWith(color: appTheme.colorFF8089, height: 1.2),
      ),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h).copyWith(top: 32.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 335.h,
            height: 48.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF1B1C,
              border: Border.all(color: appTheme.colorFF4B55),
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Row(
              children: [
                SizedBox(width: 12.h),
                _buildCountrySection(),
                Container(
                  width: 1.h,
                  height: 24.h,
                  color: appTheme.colorFF4453,
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Obx(() => TextField(
                        controller: controller.phoneController,
                        keyboardType: TextInputType.phone,
                        style: TextStyleHelper.instance.body14BoldArial
                            .copyWith(color: appTheme.colorFF8089),
                        decoration: InputDecoration(
                          hintText: 'Phone number',
                          hintStyle: TextStyleHelper.instance.body14BoldArial
                              .copyWith(color: appTheme.colorFF8089),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                        onChanged: (value) =>
                            controller.updatePhoneNumber(value),
                      )),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img7,
                  height: 15.h,
                  width: 18.h,
                ),
                SizedBox(width: 12.h),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Obx(() => Text(
                controller.phoneVerificationModel.value?.validationMessage
                        ?.value ??
                    'Please enter 10 characters,only numbers allowed',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFFF652, height: 1.2),
              )),
        ],
      ),
    );
  }

  Widget _buildCountrySection() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVectorBlueGray400,
          height: 17.h,
          width: 13.h,
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
          height: 18.h,
          width: 26.h,
        ),
        SizedBox(width: 8.h),
        Obx(() => Text(
              controller.phoneVerificationModel.value?.countryCode?.value ??
                  '+55',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            )),
        SizedBox(width: 12.h),
      ],
    );
  }

  Widget _buildSecurityInfoPanel() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h).copyWith(top: 24.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnionGray9000583x335,
            height: 83.h,
            width: 335.h,
          ),
          Positioned(
            top: 21.h,
            left: 8.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightGreenA70014x14,
                  height: 14.h,
                  width: 14.h,
                ),
                SizedBox(width: 12.h),
                SizedBox(
                  width: 285.h,
                  child: Text(
                    'The mobile number will be used to check that your money is safe when you try to withdraw',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFFFFFF, height: 1.3),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferralCodeSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h).copyWith(top: 32.h),
      child: Row(
        children: [
          Text(
            'Enter Referral / Promo Code',
            style: TextStyleHelper.instance.body14MediumArial
                .copyWith(height: 1.1),
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath: ImageConstant.imgIcon,
            height: 20.h,
            width: 20.h,
          ),
        ],
      ),
    );
  }

  Widget _buildSignInButton() {
    return Container(
      padding: EdgeInsets.all(27.h),
      child: CustomButton(
        text: 'Sign in',
        width: 322.h,
        onPressed: () => controller.onSignInPressed(),
      ),
    );
  }
}
