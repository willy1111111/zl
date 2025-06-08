import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import './controller/bank_account_settings_controller.dart';
import './widgets/bank_card_item_widget.dart';

class BankAccountSettingsScreen extends GetView<BankAccountSettingsController> {
  BankAccountSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Setting',
        tabs: [
          CustomAppBarTab(title: 'General'),
          CustomAppBarTab(title: 'Bank Account'),
          CustomAppBarTab(title: 'Security'),
        ],
        selectedTabIndex: 1,
        onTabChanged: (index) => controller.onTabChanged(index),
        height: 126.h,
      ),
      body: _buildMainContent(),
      bottomSheet: _buildBottomSection(),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.h, 20.h, 20.h, 160.h),
      child: Column(
        children: [
          _buildBankCardsList(),
          SizedBox(height: 12.h),
          _buildCardInformationText(),
        ],
      ),
    );
  }

  Widget _buildBankCardsList() {
    return Obx(
      () => ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: controller.bankCards.length,
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemBuilder: (context, index) {
          return BankCardItemWidget(
            bankCardModel: controller.bankCards[index],
          );
        },
      ),
    );
  }

  Widget _buildCardInformationText() {
    return Center(
      child: Text(
        'Display up to the latest 20 card information',
        style: TextStyleHelper.instance.body12
            .copyWith(color: appTheme.colorFF8089, height: 1.17),
      ),
    );
  }

  Widget _buildBottomSection() {
    return Container(
      padding: EdgeInsets.fromLTRB(27.h, 20.h, 27.h, 20.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomGradientButton(
            text: '+ Add Bank Account',
            onPressed: () => controller.onAddBankAccountPressed(),
            width: 322.h,
            height: 50.h,
            fontSize: 16.fSize,
            gradientColors: [
              Color(0xFF76CD00),
              appTheme.colorFF478A,
            ],
          ),
          SizedBox(height: 25.h),
          _buildPrivacyNotice(),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }

  Widget _buildPrivacyNotice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Text(
        'For your privacy and security, some information cannot be modified after confirmation, if you need help, please contact customer service',
        textAlign: TextAlign.center,
        style: TextStyleHelper.instance.body12
            .copyWith(color: appTheme.colorFF8089, height: 1.33),
      ),
    );
  }
}
