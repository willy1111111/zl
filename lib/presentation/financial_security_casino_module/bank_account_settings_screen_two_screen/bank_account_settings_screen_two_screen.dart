import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/bank_account_settings_screen_two_controller.dart';
import './widgets/account_card_widget.dart';

class BankAccountSettingsScreenTwo
    extends GetWidget<BankAccountSettingsScreenTwoController> {
  BankAccountSettingsScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPageHeader(),
            SizedBox(height: 16.h),
            _buildAccountCardsList(),
            SizedBox(height: 16.h),
            _buildAddAccountSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildPageHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Account editor',
          style: TextStyleHelper.instance.title16BoldArial
              .copyWith(color: appTheme.whiteCustom),
        ),
        GestureDetector(
          onTap: () => controller.onCancelPressed(),
          child: Text(
            'Cancel',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.colorFF478A),
          ),
        ),
      ],
    );
  }

  Widget _buildAccountCardsList() {
    return Obx(() => Column(
          children: List.generate(
            controller.bankAccounts.length,
            (index) => AccountCardWidget(
              accountModel: controller.bankAccounts[index],
              onEditPressed: () => controller.onEditAccountPressed(index),
            ),
          ),
        ));
  }

  Widget _buildAddAccountSection() {
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
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => controller.onAddBankAccountPressed(),
            child: Container(
              width: 240.h,
              height: 44.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF76CD00), Color(0xFF478A03)],
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
          ),
          SizedBox(height: 24.h),
          Text(
            'For your privacy and security, some information cannot be modified after confirmation. If you need help, please contact customer service。',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089, height: 1.14),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
