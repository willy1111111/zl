import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_input_field.dart';
import './controller/user_profile_settings_controller.dart';

class UserProfileSettingsScreen
    extends GetWidget<UserProfileSettingsController> {
  UserProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(128.h),
        child: CustomAppBar(
          title: 'Setting',
          balance: '₱1980.00',
          showBalance: true,
          tabItems: ['General', 'Bank Account', 'Security'],
          selectedTabIndex: 0,
          onBackPressed: () => Get.back(),
          onTabChanged: (index) => controller.onTabChanged(index),
        ),
      ),
      body: _buildMainContent(),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          SizedBox(height: 14.h),
          _buildUserIdCard(),
          SizedBox(height: 12.h),
          _buildContactInformationCard(),
        ],
      ),
    );
  }

  Widget _buildUserIdCard() {
    return Container(
      width: 345.h,
      height: 76.h,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup443,
            height: 48.h,
            width: 48.h,
          ),
          SizedBox(width: 8.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                controller.userProfileSettingsModel.value?.userId?.value ??
                    '13345688800',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 4.h),
              Text(
                controller.userProfileSettingsModel.value?.uid?.value ??
                    'Uid:6755399442622092',
                style: TextStyleHelper.instance.body14BoldArial,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContactInformationCard() {
    return Container(
      width: 345.h,
      height: 212.h,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color888888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildTelephoneSection(),
          SizedBox(height: 24.h),
          _buildMailSection(),
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
            SizedBox(width: 24.h),
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
          child: CustomInputField(
            value:
                controller.userProfileSettingsModel.value?.phoneNumber?.value ??
                    '+55 13045880888',
            inputType: TextInputType.phone,
            isReadOnly: true,
          ),
        ),
      ],
    );
  }

  Widget _buildMailSection() {
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
            SizedBox(width: 24.h),
            Text(
              'Mail',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
        SizedBox(height: 12.h),
        Container(
          width: 321.h,
          height: 48.h,
          child: CustomInputField(
            value: controller.userProfileSettingsModel.value?.email?.value ??
                '861719111@qq.com',
            inputType: TextInputType.emailAddress,
            isReadOnly: true,
          ),
        ),
      ],
    );
  }
}
