import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/user_profile_settings_controller.dart';

class UserProfileSettingsScreen
    extends GetWidget<UserProfileSettingsController> {
  const UserProfileSettingsScreen({Key? key}) : super(key: key);

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
      tabs: [
        CustomTabItem(title: 'General'),
        CustomTabItem(title: 'Bank Account'),
        CustomTabItem(title: 'Security'),
      ],
      selectedTabIndex: 0,
      onTabChanged: (index) => controller.onTabChanged(index),
      showStatusBar: true,
      statusBarIcon: ImageConstant.img1,
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          children: [
            SizedBox(height: 14.h),
            _buildAccountInfoCard(),
            SizedBox(height: 12.h),
            _buildMainFormSection(),
            SizedBox(height: 40.h),
            _buildSaveButton(),
            SizedBox(height: 126.h),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountInfoCard() {
    return Container(
      width: 345.h,
      height: 76.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup443,
            height: 48.h,
            width: 48.h,
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(
                      controller.userProfileSettingsModel.value?.phoneNumber
                              ?.value ??
                          '13345688800',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    )),
                SizedBox(height: 4.h),
                Obx(() => Text(
                      'Uid:${controller.userProfileSettingsModel.value?.userId?.value ?? '6755399442622092'}',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF8089),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainFormSection() {
    return Container(
      width: 345.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(12.h),
      child: Column(
        children: [
          _buildTelephoneSection(),
          SizedBox(height: 24.h),
          _buildEmailSection(),
          SizedBox(height: 24.h),
          _buildPasswordSection(),
          SizedBox(height: 24.h),
          _buildSetPasswordLink(),
        ],
      ),
    );
  }

  Widget _buildTelephoneSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup444,
              height: 12.h,
              width: 16.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'Telephone',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Container(
          width: 321.h,
          height: 48.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(6.h),
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
                radius: BorderRadius.circular(2.h),
              ),
              SizedBox(width: 12.h),
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
                child: Obx(() => Text(
                      controller.userProfileSettingsModel.value?.phoneNumber
                              ?.value ??
                          '123456789',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFFABB6),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEmailSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1WhiteA700,
              height: 12.h,
              width: 16.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'Mail',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Container(
          width: 322.h,
          height: 48.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(6.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray400,
                height: 13.h,
                width: 18.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Obx(() => Text(
                      controller.userProfileSettingsModel.value
                              ?.emailPlaceholder?.value ??
                          'Please input your email',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF8089),
                    )),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup563,
                height: 16.h,
                width: 17.h,
                onTap: () => controller.onEditEmailTap(),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Obx(() => Text(
              controller.userProfileSettingsModel.value?.emailError?.value ??
                  'Please enter the correct email format',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFFF652),
            )),
      ],
    );
  }

  Widget _buildPasswordSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 322.h,
          height: 48.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(6.h),
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
                child: Obx(() => Text(
                      controller.userProfileSettingsModel.value
                              ?.passwordPlaceholder?.value ??
                          'Please enter your password',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF8089),
                    )),
              ),
              GestureDetector(
                onTap: () => controller.togglePasswordVisibility(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray40013x19,
                  height: 13.h,
                  width: 19.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        Obx(() => Text(
              controller.userProfileSettingsModel.value?.passwordError?.value ??
                  'Please enter 6-12 alphanumeric without special character',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.colorFFF652),
            )),
      ],
    );
  }

  Widget _buildSetPasswordLink() {
    return GestureDetector(
      onTap: () => controller.onSetPasswordTap(),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img1LightGreenA70019x14,
            height: 19.h,
            width: 14.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Click to set your login password.',
                  style: TextStyleHelper.instance.title16BoldArial.copyWith(
                      color: appTheme.colorFF85D4,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 4.h),
                Container(
                  width: 254.h,
                  height: 1.h,
                  color: appTheme.colorFF85D4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSaveButton() {
    return CustomButton(
      text: 'Save',
      onPressed: () => controller.onSaveButtonPressed(),
      width: 322.h,
      height: 50.h,
      backgroundColor: appTheme.colorFF363C,
      textColor: appTheme.colorFF8089,
      borderRadius: 25.h,
      hasShadow: true,
    );
  }
}
