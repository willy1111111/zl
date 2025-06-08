import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_labeled_text.dart';
import './controller/crypto_wallet_password_setup_controller.dart';
import './widgets/wallet_type_tab_widget.dart';

class CryptoWalletPasswordSetupScreen
    extends GetWidget<CryptoWalletPasswordSetupController> {
  CryptoWalletPasswordSetupScreen({Key? key}) : super(key: key);

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
            _buildVerificationNotice(),
            _buildWalletTypeTabs(),
            _buildCryptoWalletIllustration(),
            _buildWithdrawalInformation(),
            _buildTotalRedemptionSection(),
            _buildWithdrawalAvailable(),
            _buildWithdrawalAmountInput(),
            _buildWithdrawalFeeAndExchangeRate(),
            _buildPasswordConfirmation(),
            _buildSubmitButton(),
            _buildWithdrawalRecord(),
          ],
        ),
      ),
    );
  }

  Widget _buildVerificationNotice() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 66.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF3236,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSubtractLightGreenA700,
            height: 16.h,
            width: 16.h,
            margin: EdgeInsets.only(top: 1.h, right: 5.h),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Your mobile number has not been verified yet. Please verify before withdrawing. ',
                    style: TextStyleHelper.instance.body12Medium,
                  ),
                  TextSpan(
                    text: 'Verify now →',
                    style: TextStyleHelper.instance.body12Medium.copyWith(
                        color: appTheme.colorFFFFC6,
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

  Widget _buildWalletTypeTabs() {
    return Container(
      margin: EdgeInsets.only(top: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 2.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF292F,
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Container(
                    width: 125.h,
                    height: 2.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF85D4,
                      borderRadius: BorderRadius.circular(1.h),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WalletTypeTabWidget(
                    icon: ImageConstant.imgGroup2131329909,
                    title: 'Electronic\nwallet',
                    isSelected: controller.selectedWalletType.value == 0,
                    onTap: () => controller.selectedWalletType.value = 0,
                  ),
                  WalletTypeTabWidget(
                    icon: ImageConstant.imgGroup2131329908,
                    title: 'Bank\nAccounts',
                    isSelected: controller.selectedWalletType.value == 1,
                    onTap: () => controller.selectedWalletType.value = 1,
                  ),
                  WalletTypeTabWidget(
                    icon: ImageConstant.imgGroup2131329901,
                    title: 'Crypto\nWallet',
                    isSelected: controller.selectedWalletType.value == 2,
                    onTap: () => controller.selectedWalletType.value = 2,
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildCryptoWalletIllustration() {
    return Column(
      children: [
        SizedBox(height: 20.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup278,
          height: 184.h,
          width: 240.h,
        ),
        SizedBox(height: 8.h),
        Text(
          'Crypto Wallet',
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body12Bold,
        ),
      ],
    );
  }

  Widget _buildWithdrawalInformation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      margin: EdgeInsets.only(top: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup2131329917,
            height: 50.h,
            width: 345.h,
            margin: EdgeInsets.only(bottom: 4.h),
          ),
          SizedBox(height: 6.h),
          Text(
            'Withdrawaltime(GMT+8): 00:00 -23:59',
            style: TextStyleHelper.instance.body12Bold,
          ),
          SizedBox(height: 6.h),
          CustomInfoRow(
            labelText: 'Single withdrawal Integer within: ',
            valueText: '200-3000',
            fontSize: 12,
            isBold: true,
            iconSpacing: 13,
          ),
          SizedBox(height: 6.h),
          CustomLabeledText(
            labelText: 'Withdrawal fee: ',
            valueText: '0%',
            labelStyle: TextStyleHelper.instance.body12Bold,
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(height: 6.h),
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
      margin: EdgeInsets.symmetric(horizontal: 11.h, vertical: 20.h),
      padding: EdgeInsets.all(10.h),
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
          ),
          SizedBox(height: 6.h),
          Text(
            'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，',
            style: TextStyleHelper.instance.body12Bold,
          ),
          SizedBox(height: 2.h),
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
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      margin: EdgeInsets.only(top: 20.h),
      child: CustomInfoRow(
        labelText: 'Withdrawal Available: ',
        valueText: '₱ 0',
        labelColor: appTheme.whiteCustom,
        valueColor: appTheme.colorFFFFC6,
        fontSize: 16,
        isBold: true,
        iconSpacing: 8,
      ),
    );
  }

  Widget _buildWithdrawalAmountInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          Container(
            width: 18.h,
            height: 18.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFFFC6,
              borderRadius: BorderRadius.circular(9.h),
            ),
            child: Center(
              child: Text(
                '₱',
                style: TextStyleHelper.instance.body13,
              ),
            ),
          ),
          SizedBox(width: 14.h),
          Expanded(
            child: TextFormField(
              controller: controller.withdrawalAmountController,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
              decoration: InputDecoration(
                hintText: 'Please enter the withdrawal amount',
                hintStyle: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img6,
            height: 17.h,
            width: 16.h,
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalFeeAndExchangeRate() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      margin: EdgeInsets.only(top: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomLabeledText(
            labelText: 'Withdrawal fee: ',
            valueText: '₱0.00',
            labelStyle: TextStyleHelper.instance.body12Bold,
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(height: 15.h),
          CustomLabeledText(
            labelText: 'Payment quantity: ',
            valueText: '--- USDT',
            labelStyle: TextStyleHelper.instance.body12,
            valueStyle: TextStyleHelper.instance.title18,
          ),
          SizedBox(height: 16.h),
          CustomLabeledText(
            labelText: 'Exchange rate: ',
            valueText: '1 USDT=₱ 58',
            labelStyle: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFFF652),
            valueStyle: TextStyleHelper.instance.title18,
          ),
          SizedBox(height: 16.h),
          Text(
            'The rate is for reference only',
            style: TextStyleHelper.instance.body12,
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordConfirmation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray400,
            height: 17.h,
            width: 14.h,
            margin: EdgeInsets.only(right: 14.h),
          ),
          Expanded(
            child: Obx(() => TextFormField(
                  controller: controller.passwordController,
                  obscureText: controller.isPasswordObscured.value,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089),
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
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
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27.h, vertical: 35.h),
      child: CustomGradientButton(
        text: 'Submit',
        onPressed: () => controller.onSubmitPressed(),
        textColor: appTheme.colorFF8089,
      ),
    );
  }

  Widget _buildWithdrawalRecord() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 25.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Withdrawal record',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1WhiteA700,
            height: 15.h,
            width: 14.h,
          ),
        ],
      ),
    );
  }
}
