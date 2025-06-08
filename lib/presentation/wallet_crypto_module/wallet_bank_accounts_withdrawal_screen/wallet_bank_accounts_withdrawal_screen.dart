import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_labeled_text.dart';
import './controller/wallet_bank_accounts_withdrawal_controller.dart';

class WalletBankAccountsWithdrawalScreen
    extends GetWidget<WalletBankAccountsWithdrawalController> {
  WalletBankAccountsWithdrawalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Wallet',
        showBalance: true,
        balanceAmount: '₱1980.00',
        balanceIcon: ImageConstant.imgGroup736,
        balanceActionIcon: ImageConstant.img1LightGreenA700,
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildWalletTypeTabs(),
            _buildVerificationNotice(),
            _buildBankAccountsIllustration(),
            _buildWithdrawalInformation(),
            _buildTotalRedemptionSection(),
            _buildWithdrawalAvailable(),
            _buildWithdrawalAmountInput(),
            _buildWithdrawalFee(),
            _buildPasswordInput(),
            SizedBox(height: 36.h),
            _buildSubmitButton(),
            SizedBox(height: 24.h),
            _buildWithdrawalRecord(),
            SizedBox(height: 100.h),
          ],
        ),
      ),
      floatingActionButton: _buildAddButton(),
    );
  }

  Widget _buildWalletTypeTabs() {
    return Container(
      margin: EdgeInsets.only(top: 11.h),
      height: 62.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 2.h,
              color: appTheme.colorFF292F,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 133.h,
            child: Container(
              width: 125.h,
              height: 2.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF85D4,
                borderRadius: BorderRadius.circular(1.h),
              ),
            ),
          ),
          Positioned(
            top: 11.h,
            left: 15.h,
            child: _buildTabItem(
              ImageConstant.imgWhiteA70018x18,
              'Electronic\nwallet',
              appTheme.whiteCustom,
              [Color(0xFFFF7EDD), Color(0xFFDF1AB4)],
              false,
            ),
          ),
          Positioned(
            top: 10.h,
            left: 149.h,
            child: _buildTabItem(
              ImageConstant.imgFrame2131329936,
              'Bank\nAccounts',
              appTheme.colorFF85D4,
              [Color(0xFF28B5F4), Color(0xFF016DFF)],
              true,
            ),
          ),
          Positioned(
            top: 12.h,
            left: 279.h,
            child: _buildTabItem(
              ImageConstant.imgFrame2131329936WhiteA700,
              'Crypto\nWallet',
              appTheme.whiteCustom,
              [Color(0xFFFAEB49), Color(0xFFE58500)],
              false,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem(String iconPath, String label, Color textColor,
      List<Color> gradientColors, bool isActive) {
    return Column(
      children: [
        Container(
          width: 30.h,
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.h),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: gradientColors,
            ),
          ),
          child: Center(
            child: CustomImageView(
              imagePath: iconPath,
              height: iconPath.contains('18x18')
                  ? 18.h
                  : iconPath.contains('2131329936_white')
                      ? 16.h
                      : 18.h,
              width: iconPath.contains('18x18')
                  ? 18.h
                  : iconPath.contains('2131329936.svg')
                      ? 13.h
                      : 14.h,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body14
              .copyWith(color: textColor, height: 16 / 14),
        ),
      ],
    );
  }

  Widget _buildVerificationNotice() {
    return Container(
      margin: EdgeInsets.only(top: 41.h, left: 15.h, right: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF3236,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSubtractLightGreenA700,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Your mobile number has not been verified yet. Please verify before withdrawing. ',
                    style: TextStyleHelper.instance.body12
                        .copyWith(color: appTheme.colorFF8089, height: 15 / 12),
                  ),
                  TextSpan(
                    text: 'Verify now →',
                    style: TextStyleHelper.instance.body12.copyWith(
                        color: appTheme.colorFFFFC6,
                        height: 15 / 12,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBankAccountsIllustration() {
    return Container(
      margin: EdgeInsets.only(top: 24.h),
      height: 184.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup278BlueGray700,
            height: 184.h,
            width: 240.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 87.h,
            child: Container(
              width: 30.h,
              height: 30.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF6666,
                borderRadius: BorderRadius.circular(15.h),
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgFrame2131329936,
                  height: 18.h,
                  width: 13.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalInformation() {
    return Container(
      margin: EdgeInsets.only(top: 82.h, left: 20.h, right: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Bank\nAccounts',
            textAlign: TextAlign.center,
            style:
                TextStyleHelper.instance.body12Bold.copyWith(height: 14 / 12),
          ),
          SizedBox(height: 24.h),
          Text(
            'Withdrawaltime(GMT+8): 00:00 -23:59',
            style:
                TextStyleHelper.instance.body12Bold.copyWith(height: 14 / 12),
          ),
          SizedBox(height: 24.h),
          CustomInfoRow(
            labelText: 'Single withdrawal Integer within: ',
            valueText: '200-3000',
            fontSize: 12.fSize,
            isBold: true,
            iconSpacing: 8.h,
          ),
          SizedBox(height: 24.h),
          CustomLabeledText(
            labelText: 'Withdrawal fee: ',
            valueText: '0%',
            labelStyle: TextStyleHelper.instance.body12Bold,
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(height: 24.h),
          CustomLabeledText(
            labelText: 'Number of Withdrawals: ',
            valueText: 'limited',
            labelStyle: TextStyleHelper.instance.body12Bold,
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalRedemptionSection() {
    return Container(
      margin: EdgeInsets.only(top: 24.h, left: 11.h, right: 15.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF2B2B),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomLabeledText(
            labelText: 'Total redemption value: ',
            valueText: '₱ 0',
            labelStyle: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.whiteCustom),
            valueStyle: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFFFC6),
            marginBottom: 6.h,
          ),
          Text(
            'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，',
            style:
                TextStyleHelper.instance.body12Bold.copyWith(height: 16 / 12),
          ),
          SizedBox(height: 4.h),
          CustomLabeledText(
            labelText: 'Bet Now',
            valueText: '→',
            labelStyle: TextStyleHelper.instance.body12Bold.copyWith(
                color: appTheme.colorFF51A0,
                decoration: TextDecoration.underline),
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF51A0),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalAvailable() {
    return Container(
      margin: EdgeInsets.only(top: 48.h, left: 15.h, right: 15.h),
      child: CustomInfoRow(
        labelText: 'Withdrawal Available: ',
        valueText: '₱ 0',
        labelColor: appTheme.whiteCustom,
        valueColor: appTheme.colorFFFFC6,
        fontSize: 16.fSize,
        isBold: true,
        iconSpacing: 8.h,
      ),
    );
  }

  Widget _buildWithdrawalAmountInput() {
    return Container(
      margin: EdgeInsets.only(top: 30.h, left: 15.h, right: 15.h),
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.h),
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse25,
                height: 18.h,
                width: 18.h,
              ),
              Positioned(
                top: 0,
                left: 5.h,
                child: Text(
                  '₱',
                  style:
                      TextStyleHelper.instance.body13.copyWith(height: 15 / 13),
                ),
              ),
            ],
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => TextFormField(
                  controller: controller.withdrawalAmountController,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                  decoration: InputDecoration(
                    hintText: 'Please enter the withdrawal amount',
                    hintStyle: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      controller.updateWithdrawalAmount(value),
                )),
          ),
          CustomImageView(
            imagePath: ImageConstant.img6,
            height: 16.h,
            width: 17.h,
          ),
          SizedBox(width: 12.h),
        ],
      ),
    );
  }

  Widget _buildWithdrawalFee() {
    return Container(
      margin: EdgeInsets.only(top: 6.h, left: 16.h),
      child: CustomLabeledText(
        labelText: 'Withdrawal fee: ',
        valueText: '₱0.00',
        labelStyle: TextStyleHelper.instance.body12Bold,
        valueStyle: TextStyleHelper.instance.body12Bold
            .copyWith(color: appTheme.colorFF85D4),
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Container(
      margin: EdgeInsets.only(top: 33.h, left: 15.h, right: 15.h),
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray400,
            height: 17.h,
            width: 14.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(() => TextFormField(
                  controller: controller.passwordController,
                  obscureText:
                      controller.isPasswordVisible.value ? false : true,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                  onChanged: (value) => controller.updatePassword(value),
                )),
          ),
          GestureDetector(
            onTap: () => controller.togglePasswordVisibility(),
            child: CustomImageView(
              imagePath: ImageConstant.img4,
              height: 13.h,
              width: 19.h,
            ),
          ),
          SizedBox(width: 12.h),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return CustomGradientButton(
      text: 'Submit',
      width: 322.h,
      height: 50.h,
      textColor: appTheme.colorFF8089,
      onPressed: () => controller.onSubmitPressed(),
    );
  }

  Widget _buildWithdrawalRecord() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      height: 44.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        children: [
          SizedBox(width: 16.h),
          Expanded(
            child: Text(
              'Withdrawal record',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1WhiteA700,
            height: 15.h,
            width: 14.h,
          ),
          SizedBox(width: 16.h),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return Container(
      width: 50.h,
      height: 50.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF85D4,
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom.withAlpha(77),
            blurRadius: 8.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Center(
        child: Text(
          '+',
          style: TextStyleHelper.instance.headline24Bold,
        ),
      ),
    );
  }
}
