import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/bank_account_settings_screen_three_controller.dart';

class BankAccountSettingsScreenThree
    extends GetWidget<BankAccountSettingsScreenThreeController> {
  BankAccountSettingsScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: 375.h,
        child: Column(
          children: [
            _buildMainContent(),
          ],
        ),
      ),
    );
  }

  /// Builds the app bar with tabs and balance section
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Setting',
      leadingIcon: ImageConstant.imgStroke,
      onLeadingPressed: () => Get.back(),
      showBalance: true,
      balanceAmount: '₱1980.00',
      balanceIcon: ImageConstant.imgGroup736,
      statusIcon: ImageConstant.img1LightGreenA700,
      backgroundColor: appTheme.colorFF1B1C,
      showStatusBar: true,
      statusBarIcon: ImageConstant.img1,
      tabs: [
        // Modified: Removed local CustomTabItem and use proper constructor
        CustomTabItem(title: 'General'),
        CustomTabItem(title: 'Bank Account'),
        CustomTabItem(title: 'Security'),
      ],
      selectedTabIndex: 1,
      onTabChanged: (index) => controller.onTabChanged(index),
    );
  }

  /// Builds the main content section
  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Container(
        width: 345.h,
        height: 189.h,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 13.h),
            _buildAddBankAccountButton(),
            SizedBox(height: 23.h),
            _buildPrivacyNotice(),
          ],
        ),
      ),
    );
  }

  /// Builds the add bank account button
  Widget _buildAddBankAccountButton() {
    return Container(
      width: 240.h,
      height: 44.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF76CD00),
            appTheme.colorFF478A,
          ],
        ),
        borderRadius: BorderRadius.circular(21.h),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          borderRadius: BorderRadius.circular(21.h),
          onTap: () => controller.onAddBankAccountPressed(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                height: 14.h,
                width: 13.h,
              ),
              SizedBox(width: 9.h),
              Text(
                'Add Bank Account',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the privacy notice text
  Widget _buildPrivacyNotice() {
    return Text(
      'For your privacy and security, some information cannot be modified after confirmation. If you need help, please contact customer service。',
      style: TextStyleHelper.instance.body14BoldArial
          .copyWith(color: appTheme.colorFF8089, height: 1.14),
    );
  }
}

// Modified: Removed local CustomTabItem class to use the one from custom_app_bar.dart
