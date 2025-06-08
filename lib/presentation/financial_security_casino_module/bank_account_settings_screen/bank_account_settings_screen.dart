import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/bank_account_settings_controller.dart';
import './widgets/account_card_widget.dart';

class BankAccountSettingsScreen
    extends GetWidget<BankAccountSettingsController> {
  BankAccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAccountEditorHeader(),
                      SizedBox(height: 16.h),
                      _buildAccountCardsList(),
                      SizedBox(height: 16.h),
                      _buildAddAccountSection(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
      selectedTabIndex: 1,
      onTabChanged: (index) => controller.onTabChanged(index),
    );
  }

  Widget _buildAccountEditorHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Account editor',
          style: TextStyleHelper.instance.title16BoldArial
              .copyWith(color: appTheme.whiteCustom),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup954,
          height: 30.h,
          width: 44.h,
        ),
      ],
    );
  }

  Widget _buildAccountCardsList() {
    return Obx(() => Column(
          children: List.generate(
            controller.bankAccounts.length,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: AccountCardWidget(
                accountData: controller.bankAccounts[index],
              ),
            ),
          ),
        ));
  }

  Widget _buildAddAccountSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
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
      child: Column(
        children: [
          _buildAddBankAccountButton(),
          SizedBox(height: 24.h),
          _buildPrivacyNotice(),
        ],
      ),
    );
  }

  Widget _buildAddBankAccountButton() {
    return GestureDetector(
      onTap: () => controller.onAddBankAccountTap(),
      child: Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorWhiteA700,
              height: 14.h,
              width: 13.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'Add Bank Account',
              style: TextStyleHelper.instance.title16BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacyNotice() {
    return Text(
      'For your privacy and security, some information cannot be modified after confirmation. If you need help, please contact customer service。',
      style: TextStyleHelper.instance.body14BoldArial
          .copyWith(color: appTheme.colorFF8089, height: 1.14),
      textAlign: TextAlign.left,
    );
  }
}

// Modified: Removed local CustomTabItem class as it conflicts with the one in custom_app_bar.dart
