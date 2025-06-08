import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_labeled_text.dart';
import '../../widgets/custom_number_input.dart';
import './controller/crypto_wallet_withdrawal_controller.dart';

class CryptoWalletWithdrawalScreen
    extends GetWidget<CryptoWalletWithdrawalController> {
  CryptoWalletWithdrawalScreen({Key? key}) : super(key: key);

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
        child: Padding(
          padding: EdgeInsets.only(top: 66.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildVerificationNotice(),
              SizedBox(height: 15.h),
              _buildWalletTypeTabs(),
              SizedBox(height: 90.h),
              _buildCryptoWalletIllustration(),
              SizedBox(height: 30.h),
              _buildWithdrawalInfoSection(),
              SizedBox(height: 20.h),
              _buildTotalRedemptionSection(),
              SizedBox(height: 20.h),
              _buildWithdrawalAvailableSection(),
              SizedBox(height: 20.h),
              _buildPasswordConfirmation(),
              SizedBox(height: 20.h),
              _buildSubmitButton(),
              SizedBox(height: 20.h),
              _buildWithdrawalRecordButton(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerificationNotice() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
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

  Widget _buildWalletTypeTabs() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 2.h,
          color: appTheme.colorFF292F,
        ),
        Container(
          height: 2.h,
          width: 125.h,
          margin: EdgeInsets.only(left: 250.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF85D4,
            borderRadius: BorderRadius.circular(1.h),
          ),
        ),
        SizedBox(height: 18.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildTabItem(
                ImageConstant.imgGroup2131329909,
                'Electronic\nwallet',
                false,
              ),
              _buildTabItem(
                ImageConstant.imgGroup2131329908,
                'Bank\nAccounts',
                false,
              ),
              _buildTabItem(
                ImageConstant.imgGroup2131329901,
                'Crypto\nWallet',
                true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTabItem(String imagePath, String title, bool isActive) {
    return Column(
      children: [
        CustomImageView(
          imagePath: imagePath,
          height: 30.h,
          width: 30.h,
        ),
        SizedBox(height: 1.h),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body14.copyWith(
              color: isActive ? Color(0xFF85D420) : appTheme.whiteCustom,
              height: 1.14),
        ),
      ],
    );
  }

  Widget _buildCryptoWalletIllustration() {
    return Column(
      children: [
        Center(
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup278,
            height: 184.h,
            width: 240.h,
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          'Crypto Wallet',
          style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
        ),
      ],
    );
  }

  Widget _buildWithdrawalInfoSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup2131329917,
            height: 50.h,
            width: 345.h,
          ),
          SizedBox(height: 4.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Withdrawaltime(GMT+8): 00:00 -23:59',
                style:
                    TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
              ),
              SizedBox(height: 4.h),
              CustomInfoRow(
                labelText: 'Single withdrawal Integer within: ',
                valueText: '200-3000',
                fontSize: 12.fSize,
                isBold: true,
                iconSpacing: 13.h,
              ),
              SizedBox(height: 4.h),
              CustomLabeledText(
                labelText: 'Withdrawal fee: ',
                valueText: '0%',
                labelStyle:
                    TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
                valueStyle: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF85D4, height: 1.17),
              ),
              SizedBox(height: 4.h),
              CustomLabeledText(
                labelText: 'Number of Withdrawals: ',
                valueText: 'limited',
                labelStyle:
                    TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
                valueStyle: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF85D4, height: 1.17),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTotalRedemptionSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.h),
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
                .copyWith(color: appTheme.whiteCustom, height: 1.21),
            valueStyle: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFFFC6, height: 1.21),
            marginBottom: 6.h,
            isCapitalized: true,
          ),
          Text(
            'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，',
            style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.33),
          ),
          SizedBox(height: 2.h),
          CustomLabeledText(
            labelText: 'Bet Now',
            valueText: '→',
            labelStyle: TextStyleHelper.instance.body12Bold.copyWith(
                color: appTheme.colorFF51A0,
                height: 1.17,
                decoration: TextDecoration.underline),
            valueStyle: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF51A0, height: 1.17),
            isCapitalized: true,
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalAvailableSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomInfoRow(
            labelText: 'Withdrawal Available: ',
            valueText: '₱ 0',
            labelColor: appTheme.whiteCustom,
            valueColor: appTheme.colorFFFFC6,
            fontSize: 16.fSize,
            isBold: true,
            iconSpacing: 7.h,
          ),
          SizedBox(height: 10.h),
          _buildAmountInput(),
          SizedBox(height: 20.h),
          _buildFeeAndExchangeInfo(),
        ],
      ),
    );
  }

  Widget _buildAmountInput() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 14.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  height: 18.h,
                  width: 18.h,
                ),
                Text(
                  '₱',
                  style: TextStyleHelper.instance.body13.copyWith(height: 1.15),
                ),
              ],
            ),
          ),
          Expanded(
            child: CustomNumberInput(
              initialValue: '2000',
              onChanged: (value) => controller.updateWithdrawalAmount(value),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img6,
            height: 16.h,
            width: 17.h,
          ),
        ],
      ),
    );
  }

  Widget _buildFeeAndExchangeInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLabeledText(
          labelText: 'Withdrawal fee: ',
          valueText: '₱0.00',
          labelStyle:
              TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
          valueStyle: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.17),
          isCapitalized: true,
        ),
        SizedBox(height: 7.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Payment quantity: ',
                style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
              ),
              TextSpan(
                text: '2000',
                style: TextStyleHelper.instance.title18
                    .copyWith(color: appTheme.colorFF85D4, height: 0.89),
              ),
              TextSpan(
                text: ' ',
                style: TextStyleHelper.instance.title18.copyWith(height: 0.89),
              ),
              TextSpan(
                text: 'USDT',
                style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        CustomLabeledText(
          labelText: 'Exchange rate: ',
          valueText: '1 USDT=₱ 58',
          labelStyle: TextStyleHelper.instance.body14
              .copyWith(color: appTheme.colorFFF652, height: 1.14),
          valueStyle: TextStyleHelper.instance.title18.copyWith(height: 0.89),
          marginBottom: 5.h,
        ),
        Text(
          'The rate is for reference only',
          style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
        ),
      ],
    );
  }

  Widget _buildPasswordConfirmation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
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
            child: Obx(
              () => TextFormField(
                controller: controller.passwordController,
                obscureText: controller.isPasswordHidden.value,
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomGradientButton(
        text: 'Submit',
        onPressed: () => controller.onSubmitPressed(),
        textColor: appTheme.colorFF8089,
        isFullWidth: true,
      ),
    );
  }

  Widget _buildWithdrawalRecordButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
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
                .copyWith(color: appTheme.colorFF85D4, height: 1.21),
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
