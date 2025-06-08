import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_labeled_text.dart';
import './controller/electronic_wallet_withdrawal_controller.dart';

class ElectronicWalletWithdrawalScreen
    extends GetWidget<ElectronicWalletWithdrawalController> {
  ElectronicWalletWithdrawalScreen({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWalletTypeSelection(),
            _buildActiveIndicator(),
            _buildVerificationNotice(),
            _buildEmptyWalletIllustration(),
            _buildWithdrawalInformation(),
            _buildTotalRedemptionValue(),
            _buildWithdrawalAvailable(),
            _buildWithdrawalAmountInput(),
            _buildWithdrawalFee(),
            _buildPasswordConfirmation(),
            _buildSubmitButton(),
            _buildWithdrawalRecord(),
            SizedBox(height: 80.h),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildWalletTypeSelection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: EdgeInsets.only(top: 16.h),
      child: Stack(
        children: [
          // Electronic Wallet - Active
          Column(
            children: [
              Container(
                width: 30.h,
                height: 30.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.h),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329909,
                  height: 30.h,
                  width: 30.h,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Electronic\nwallet',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF85D4, height: 1.14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          // Bank Accounts
          Positioned(
            top: 99.h,
            left: 133.h,
            child: Column(
              children: [
                Container(
                  width: 30.h,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.h),
                    gradient: LinearGradient(
                      colors: [Color(0xFF28B5F4), Color(0xFF016DFF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame2131329936,
                      height: 18.h,
                      width: 13.h,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Bank\nAccounts',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.whiteCustom, height: 1.14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // Crypto Wallet
          Positioned(
            top: 100.h,
            left: 263.h,
            child: Column(
              children: [
                Container(
                  width: 30.h,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.h),
                    gradient: LinearGradient(
                      colors: [Color(0xFFFAEB49), Color(0xFFE58500)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame2131329936WhiteA700,
                      height: 14.h,
                      width: 16.h,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Crypto\nWallet',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.whiteCustom, height: 1.14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActiveIndicator() {
    return Container(
      margin: EdgeInsets.only(top: 32.h),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 2.h,
            color: appTheme.colorFF292F,
          ),
          Container(
            width: 125.h,
            height: 2.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF85D4,
              borderRadius: BorderRadius.circular(1.h),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVerificationNotice() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      padding: EdgeInsets.all(16.h),
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
            margin: EdgeInsets.only(top: 4.h),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Your mobile number has not been verified yet. Please verify before withdrawing. ',
                    style: TextStyleHelper.instance.body12Medium
                        .copyWith(height: 1.25),
                  ),
                  TextSpan(
                    text: 'Verify now →',
                    style: TextStyleHelper.instance.body12Medium.copyWith(
                        color: appTheme.colorFFFFC6,
                        height: 1.25,
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

  Widget _buildEmptyWalletIllustration() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 32.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup278BlueGray700,
            height: 184.h,
            width: 240.h,
          ),
          SizedBox(height: 16.h),
          Text(
            'Empty E-Wallet',
            style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalInformation() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: EdgeInsets.only(bottom: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Withdrawaltime(GMT+8): 00:00 -23:59',
            style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
          ),
          SizedBox(height: 8.h),
          CustomInfoRow(
            labelText: 'Single withdrawal Integer within: ',
            valueText: '200-3000',
            fontSize: 12,
            isBold: true,
            iconSpacing: 13,
          ),
          SizedBox(height: 8.h),
          CustomLabeledText(
            labelText: 'Withdrawal fee: ',
            valueText: '0%',
            labelStyle: TextStyleHelper.instance.body12Bold,
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(height: 8.h),
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

  Widget _buildTotalRedemptionValue() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF2B2B),
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
            marginBottom: 8,
          ),
          Text(
            'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，',
            style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.33),
          ),
          SizedBox(height: 8.h),
          CustomLabeledText(
            labelText: 'Bet Now',
            valueText: '→',
            labelStyle: TextStyleHelper.instance.body12Bold.copyWith(
                color: appTheme.colorFF51A0,
                decoration: TextDecoration.underline),
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF51A0),
            isCapitalized: true,
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalAvailable() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: EdgeInsets.only(bottom: 16.h),
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
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
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
                  style: TextStyleHelper.instance.body13.copyWith(height: 1.15),
                ),
              ),
            ],
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: TextFormField(
              controller: controller.amountController,
              keyboardType: TextInputType.number,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.21),
              decoration: InputDecoration(
                hintText: 'Please enter the withdrawal amount',
                hintStyle: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.21),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
              onChanged: (value) => controller.updateWithdrawalAmount(value),
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

  Widget _buildWithdrawalFee() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: EdgeInsets.only(bottom: 24.h),
      child: CustomLabeledText(
        labelText: 'Withdrawal fee: ',
        valueText: '₱0.00',
        labelStyle: TextStyleHelper.instance.body12Bold,
        valueStyle: TextStyleHelper.instance.body12Bold
            .copyWith(color: appTheme.colorFF85D4),
      ),
    );
  }

  Widget _buildPasswordConfirmation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      padding: EdgeInsets.all(16.h),
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
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: TextFormField(
              controller: controller.passwordController,
              obscureText: !controller.isPasswordVisible.value,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.21),
              decoration: InputDecoration(
                hintText: 'Confirm password',
                hintStyle: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.21),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          Obx(() => GestureDetector(
                onTap: () => controller.togglePasswordVisibility(),
                child: CustomImageView(
                  imagePath: ImageConstant.img4,
                  height: 19.h,
                  width: 13.h,
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      child: Obx(() => CustomGradientButton(
            text: controller.isSubmitting.value ? 'Processing...' : 'Submit',
            onPressed: controller.isSubmitting.value
                ? null
                : () => controller.submitWithdrawal(),
            gradientColors: [Color(0xFF363C41), Color(0xFF2B3035)],
            textColor: appTheme.colorFF8089,
            isFullWidth: true,
          )),
    );
  }

  Widget _buildWithdrawalRecord() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: GestureDetector(
        onTap: () => controller.navigateToWithdrawalRecord(),
        child: Container(
          padding: EdgeInsets.all(16.h),
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
                    .copyWith(color: appTheme.colorFF85D4, height: 1.21),
              ),
              CustomImageView(
                imagePath: ImageConstant.img1WhiteA700,
                height: 15.h,
                width: 14.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Container(
      width: 50.h,
      height: 50.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF85D4,
        borderRadius: BorderRadius.circular(25.h),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4.h),
            blurRadius: 8.h,
          ),
        ],
      ),
      child: Center(
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup2131329917,
          height: 30.h,
          width: 30.h,
        ),
      ),
    );
  }
}
