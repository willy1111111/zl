import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_field.dart';
import './controller/security_password_configuration_controller.dart';

class SecurityPasswordConfigurationScreen
    extends GetWidget<SecurityPasswordConfigurationController> {
  SecurityPasswordConfigurationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Setting',
      leadingIcon: ImageConstant.imgStroke,
      onLeadingPressed: () => Get.back(),
      showBalance: true,
      balanceAmount: '₱1980.00',
      balanceIcon: ImageConstant.imgGroup736,
      statusIcon: ImageConstant.img1LightGreenA700,
      showStatusBar: true,
      statusBarIcon: ImageConstant.img1,
      tabs: [
        // Modified: Removed local CustomTabItem instances to use the ones from custom_app_bar.dart
        CustomTabItem(title: 'General'),
        CustomTabItem(title: 'Bank Account'),
        CustomTabItem(
          title: 'Security',
          icon: ImageConstant.imgVectorBlueGray40012x12,
        ),
      ],
      selectedTabIndex: 2,
      onTabChanged: (index) => controller.onTabChanged(index),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: 16.h,
        left: 15.h,
        right: 15.h,
        bottom: 20.h,
      ),
      child: Column(
        children: [
          _buildFundPasswordSection(),
          SizedBox(height: 72.h),
          _buildLoginPasswordSection(),
        ],
      ),
    );
  }

  Widget _buildFundPasswordSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fund Password',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 5.h),
          Text(
            'Set a fund password to make your account more secure.',
            style: TextStyleHelper.instance.body12BoldArial
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 21.h),
          Container(
            width: 325.h,
            height: 1.h,
            color: appTheme.colorFF282F,
          ),
          SizedBox(height: 9.h),
          _buildOldPasswordField(),
          SizedBox(height: 22.h),
          _buildNewPasswordField(),
          SizedBox(height: 22.h),
          _buildConfirmNewPasswordField(),
          SizedBox(height: 22.h),
          GestureDetector(
            onTap: () => controller.onForgotPasswordTap(),
            child: Text(
              'Forgot password?',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          SizedBox(height: 22.h),
          _buildFundPasswordSaveButton(),
        ],
      ),
    );
  }

  Widget _buildOldPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Old Password',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(width: 6.h),
            CustomImageView(
              imagePath: ImageConstant.imgRedA70001,
              height: 5.h,
              width: 5.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller.oldPasswordController,
          hintText: '123456789',
          isPassword: true,
          prefixIcon: ImageConstant.img1BlueGray40017x14,
          suffixIcon: ImageConstant.imgVectorBlueGray40012x20,
          fillColor: appTheme.colorFF1E20,
          borderRadius: 6.h,
          enabled: false,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 12.h,
          ),
        ),
      ],
    );
  }

  Widget _buildNewPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'New Password',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgRedA70001,
              height: 5.h,
              width: 5.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller.newPasswordController,
          hintText: 'Enter new password',
          isPassword: true,
          prefixIcon: ImageConstant.img1BlueGray40017x14,
          suffixIcon: ImageConstant.imgVectorBlueGray40013x19,
          fillColor: appTheme.colorFF1E20,
          borderRadius: 6.h,
          onChanged: (value) => controller.onNewPasswordChanged(value),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 12.h,
          ),
        ),
      ],
    );
  }

  Widget _buildConfirmNewPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Confirm New Password',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgRedA70001,
              height: 5.h,
              width: 5.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller.confirmNewPasswordController,
          hintText: 'Confirm password',
          isPassword: true,
          prefixIcon: ImageConstant.img1BlueGray40017x14,
          suffixIcon: ImageConstant.img3BlueGray400,
          fillColor: appTheme.colorFF1E20,
          borderRadius: 6.h,
          onChanged: (value) => controller.onConfirmNewPasswordChanged(value),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 12.h,
          ),
        ),
      ],
    );
  }

  Widget _buildFundPasswordSaveButton() {
    return Obx(() => Center(
          child: GestureDetector(
            onTap: () => controller.onFundPasswordSave(),
            child: Container(
              height: 42.h,
              width: 240.h,
              decoration: BoxDecoration(
                gradient: (controller.isFundPasswordFormValid.value ?? false)
                    ? LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                      )
                    : LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                      ),
                borderRadius: BorderRadius.circular(21.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyleHelper.instance.title16BoldArial.copyWith(
                      color: (controller.isFundPasswordFormValid.value ?? false)
                          ? appTheme.whiteCustom
                          : appTheme.colorFF8089),
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildLoginPasswordSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40012x12,
                height: 12.h,
                width: 12.h,
              ),
              SizedBox(width: 6.h),
              Text(
                'Please create a login password',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          _buildLoginNewPasswordField(),
          SizedBox(height: 22.h),
          _buildLoginConfirmPasswordField(),
          SizedBox(height: 22.h),
          _buildLoginPasswordSaveButton(),
        ],
      ),
    );
  }

  Widget _buildLoginNewPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'New Password',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgRedA70001,
              height: 5.h,
              width: 5.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller.loginNewPasswordController,
          hintText: 'Enter a new password',
          isPassword: true,
          backgroundImage: ImageConstant.imgGroup448,
          onChanged: (value) => controller.onLoginNewPasswordChanged(value),
          contentPadding: EdgeInsets.only(
            left: 48.h,
            right: 12.h,
            top: 12.h,
            bottom: 12.h,
          ),
        ),
      ],
    );
  }

  Widget _buildLoginConfirmPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Confirm New Password',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgRedA70001,
              height: 5.h,
              width: 5.h,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        CustomTextField(
          controller: controller.loginConfirmPasswordController,
          hintText: 'Confirm Password',
          isPassword: true,
          backgroundImage: ImageConstant.imgGroup448,
          onChanged: (value) => controller.onLoginConfirmPasswordChanged(value),
          contentPadding: EdgeInsets.only(
            left: 48.h,
            right: 12.h,
            top: 12.h,
            bottom: 12.h,
          ),
        ),
      ],
    );
  }

  Widget _buildLoginPasswordSaveButton() {
    return Obx(() => Center(
          child: GestureDetector(
            onTap: () => controller.onLoginPasswordSave(),
            child: Container(
              height: 42.h,
              width: 240.h,
              decoration: BoxDecoration(
                gradient: (controller.isLoginPasswordFormValid.value ?? false)
                    ? LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                      )
                    : LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                      ),
                borderRadius: BorderRadius.circular(21.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  'Save',
                  style: TextStyleHelper.instance.title16BoldArial.copyWith(
                      color:
                          (controller.isLoginPasswordFormValid.value ?? false)
                              ? appTheme.whiteCustom
                              : appTheme.colorFF8089),
                ),
              ),
            ),
          ),
        ));
  }
}

// Modified: Removed local CustomTabItem class as it conflicts with the one in custom_app_bar.dart
