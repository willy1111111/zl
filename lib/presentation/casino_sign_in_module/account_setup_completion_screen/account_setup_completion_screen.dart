import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_field.dart';
import './controller/account_setup_completion_controller.dart';

class AccountSetupCompletionScreen
    extends GetWidget<AccountSetupCompletionController> {
  AccountSetupCompletionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1A1C,
      appBar: CustomAppBar(
        showBackButton: true,
        height: 60.h,
        backButtonIcon: ImageConstant.imgStrokeWhiteA700,
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22.h),
              _buildUserGreetingSection(),
              SizedBox(height: 24.h),
              _buildSetupInstructions(),
              SizedBox(height: 24.h),
              _buildPhoneNumberInput(),
              SizedBox(height: 24.h),
              _buildPasswordInput(),
              SizedBox(height: 24.h),
              _buildAccountExistsAlert(),
              SizedBox(height: 24.h),
              _buildReferralCodeSection(),
              SizedBox(height: 32.h),
              _buildSignInButton(),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserGreetingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Dear',
              style: TextStyleHelper.instance.title16BoldArial
                  .copyWith(color: appTheme.colorFF8089, height: 1.19),
            ),
            SizedBox(width: 8.h),
            Obx(() => Text(
                  controller.accountSetupModel.value?.userEmail?.value ??
                      '123@gmail.com',
                  style: TextStyleHelper.instance.title18BoldArial
                      .copyWith(height: 1.17),
                )),
          ],
        ),
        SizedBox(height: 16.h),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 1.h,
              color: appTheme.colorFF282F,
            ),
            Positioned(
              left: 156.h,
              top: 0,
              child: Container(
                width: 66.h,
                height: 2.h,
                color: appTheme.colorFF85D4,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSetupInstructions() {
    return Text(
      '*Finish setting up your account',
      style: TextStyleHelper.instance.body14BoldArial
          .copyWith(color: appTheme.colorFF8089, height: 1.21),
    );
  }

  Widget _buildPhoneNumberInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray400,
            height: 17.h,
            width: 13.h,
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            height: 18.h,
            width: 26.h,
            radius: BorderRadius.circular(2.h),
          ),
          SizedBox(width: 8.h),
          Text(
            '+55',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.colorFF8089, height: 1.17),
          ),
          SizedBox(width: 12.h),
          Container(
            width: 1.h,
            height: 24.h,
            color: appTheme.colorFF4453,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: TextFormField(
              controller: controller.phoneController,
              keyboardType: TextInputType.phone,
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089, height: 1.21),
              decoration: InputDecoration(
                hintText: 'Phone number',
                hintStyle: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF8089, height: 1.21),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              onChanged: (value) => controller.updatePhoneNumber(value),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            height: 15.h,
            width: 18.h,
          ),
          SizedBox(width: 12.h),
        ],
      ),
    );
  }

  Widget _buildPasswordInput() {
    return CustomTextField(
      hintText: 'Password',
      leadingIcon: ImageConstant.img1BlueGray400,
      trailingIcon: ImageConstant.img3,
      isPassword: true,
      controller: controller.passwordController,
      onTrailingIconTap: () => controller.togglePasswordVisibility(),
    );
  }

  Widget _buildAccountExistsAlert() {
    return Stack(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnionGray90005,
          height: 65.h,
          width: 335.h,
        ),
        Positioned(
          top: 20.h,
          left: 24.h,
          right: 24.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreenA70014x14,
                height: 14.h,
                width: 14.h,
                margin: EdgeInsets.only(top: 4.h),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Text(
                  'Account already exists! Please verify the password and\ncomplete the binding.',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFFFFFF, height: 1.29),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildReferralCodeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Enter Referral / Promo Code',
              style: TextStyleHelper.instance.body14MediumArial
                  .copyWith(height: 1.14),
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgIconBlueGray400,
              height: 20.h,
              width: 20.h,
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Container(
          height: 48.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h),
          ),
          child: Row(
            children: [
              SizedBox(width: 12.h),
              CustomImageView(
                imagePath: ImageConstant.imgPromocode1,
                height: 24.h,
                width: 24.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: TextFormField(
                  controller: controller.referralCodeController,
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                  decoration: InputDecoration(
                    hintText: 'Invitation code',
                    hintStyle: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFF8089, height: 1.21),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  onChanged: (value) => controller.updateReferralCode(value),
                ),
              ),
              SizedBox(width: 12.h),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignInButton() {
    return Center(
      child: Container(
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
              color: appTheme.colorFF0000,
              offset: Offset(0, 4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        child: Material(
          color: appTheme.transparentCustom,
          child: InkWell(
            borderRadius: BorderRadius.circular(25.h),
            onTap: () => controller.signIn(),
            child: Center(
              child: Text(
                'Sign in',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.colorFF8089, height: 1.19),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
