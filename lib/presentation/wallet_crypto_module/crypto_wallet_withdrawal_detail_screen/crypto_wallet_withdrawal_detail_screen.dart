import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_labeled_text.dart';
import '../../widgets/custom_number_input.dart';
import './controller/crypto_wallet_withdrawal_detail_controller.dart';

class CryptoWalletWithdrawalDetailScreen
    extends GetWidget<CryptoWalletWithdrawalDetailController> {
  CryptoWalletWithdrawalDetailScreen({Key? key}) : super(key: key);

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
            _buildWalletTypeTabs(),
            _buildCryptoCard(),
            _buildWithdrawalInfoSection(),
            _buildTotalRedemptionSection(),
            _buildWithdrawalAvailableSection(),
            _buildWithdrawalForm(),
            _buildWithdrawalRecord(),
            SizedBox(height: 80.h),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildWalletTypeTabs() {
    return Container(
      margin: EdgeInsets.only(top: 48.h),
      child: Stack(
        children: [
          Container(
            height: 2.h,
            margin: EdgeInsets.only(top: 70.h),
            color: appTheme.colorFF292F,
          ),
          Container(
            height: 2.h,
            width: 125.h,
            margin: EdgeInsets.only(top: 70.h, left: 130.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF85D4,
              borderRadius: BorderRadius.circular(1.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTabItem(
                  ImageConstant.imgGroup2131329909,
                  'Electronic\nwallet',
                  false,
                ),
                _buildTabItem(
                  ImageConstant.imgGroup2131329908,
                  'Bank\nAccounts',
                  true,
                ),
                _buildTabItem(
                  ImageConstant.imgGroup2131329901,
                  'Crypto\nWallet',
                  false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem(String imagePath, String label, bool isActive) {
    return Column(
      children: [
        CustomImageView(
          imagePath: imagePath,
          height: 30.h,
          width: 30.h,
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body14.copyWith(
              color: isActive ? Color(0xFF85D420) : appTheme.whiteCustom,
              height: 1.14),
        ),
      ],
    );
  }

  Widget _buildCryptoCard() {
    return Container(
      margin: EdgeInsets.fromLTRB(20.h, 16.h, 20.h, 0),
      child: Column(
        children: [
          Container(
            height: 149.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.5, -1.0),
                end: Alignment(1.5, 1.0),
                colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
              ),
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20.h,
                  left: 18.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup2131329901,
                    height: 18.h,
                    width: 18.h,
                  ),
                ),
                Positioned(
                  top: 37.h,
                  right: 41.h,
                  child: CustomImageView(
                    imagePath: ImageConstant
                        .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
                    height: 80.h,
                    width: 74.h,
                  ),
                ),
                Positioned(
                  top: 116.h,
                  right: 41.h,
                  child: Container(
                    height: 9.h,
                    width: 88.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0x7F3F3F3F), Color(0x7F3F3F3F)],
                      ),
                      borderRadius: BorderRadius.circular(4.h),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.colorFF8888,
                          blurRadius: 12.h,
                          offset: Offset(0, 4.h),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 19.h,
                  left: 44.h,
                  child: Text(
                    'USDT(TRC20)',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(height: 1.375),
                  ),
                ),
                Positioned(
                  top: 46.h,
                  left: 18.h,
                  child: Container(
                    height: 1.h,
                    width: 144.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFC700), Color(0xFFFFC700)],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 74.h,
                  left: 16.h,
                  child: Text(
                    'TP****LfXH',
                    style: TextStyleHelper.instance.headline24Black
                        .copyWith(height: 1.42, shadows: [
                      Shadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 1.h),
                        blurRadius: 2.h,
                      ),
                    ]),
                  ),
                ),
                Positioned(
                  top: 118.h,
                  left: 16.h,
                  child: Text(
                    '2025-01-03',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom, height: 1.17),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup821,
            height: 5.h,
            width: 32.h,
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalInfoSection() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.h, 32.h, 20.h, 0),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup2131329917,
            height: 50.h,
            width: double.maxFinite,
          ),
          SizedBox(height: 16.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Withdrawaltime(GMT+8): 00:00 -23:59',
                style:
                    TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
              ),
              SizedBox(height: 8.h),
              CustomInfoRow(
                labelText: 'Single withdrawal Integer within: ',
                valueText: '200-3000',
                fontSize: 12.fSize,
                isBold: true,
                iconSpacing: 4.h,
              ),
              SizedBox(height: 8.h),
              CustomLabeledText(
                labelText: 'Withdrawal fee: ',
                valueText: '0%',
                labelStyle:
                    TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
                valueStyle: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF85D4, height: 1.17),
              ),
              SizedBox(height: 8.h),
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
      margin: EdgeInsets.fromLTRB(12.h, 32.h, 12.h, 0),
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
                .copyWith(color: appTheme.whiteCustom, height: 1.21),
            valueStyle: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFFFC6, height: 1.21),
            marginBottom: 8.h,
          ),
          RichText(
            text: TextSpan(
              style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.33),
              children: [
                TextSpan(
                    text: 'Complete the remaining required bets：135,999.19\n'),
                TextSpan(text: 'To increase your Withdrawal Available，'),
                TextSpan(
                  text: 'Bet Now→',
                  style: TextStyleHelper.instance.textStyle11.copyWith(
                      color: appTheme.colorFF51A0,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalAvailableSection() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.h, 32.h, 16.h, 0),
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

  Widget _buildWithdrawalForm() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.h, 16.h, 16.h, 0),
      child: Column(
        children: [
          _buildAmountInput(),
          SizedBox(height: 16.h),
          _buildPasswordInput(),
          SizedBox(height: 32.h),
          CustomGradientButton(
            text: 'Submit',
            onPressed: () => controller.onSubmitPressed(),
            gradientColors: [Color(0xFF363C41), Color(0xFF2B3035)],
            textColor: appTheme.colorFF8089,
          ),
        ],
      ),
    );
  }

  Widget _buildAmountInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.h),
          Container(
            height: 18.h,
            width: 18.h,
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
          SizedBox(width: 12.h),
          Expanded(
            child: CustomNumberInput(
              hintText: 'Please enter the withdrawal amount',
              controller: controller.amountController,
              onChanged: (value) => controller.onAmountChanged(value),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            height: 15.h,
            width: 17.h,
          ),
          SizedBox(width: 12.h),
        ],
      ),
    );
  }

  Widget _buildPasswordInput() {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: TextFormField(
        controller: controller.passwordController,
        obscureText: true,
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.whiteCustom, height: 1.21),
        decoration: InputDecoration(
          hintText: 'Transaction Password',
          hintStyle: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089, height: 1.21),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.h),
        ),
      ),
    );
  }

  Widget _buildWithdrawalRecord() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.h, 32.h, 16.h, 0),
      child: GestureDetector(
        onTap: () => controller.onWithdrawalRecordPressed(),
        child: Container(
          height: 44.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.h),
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
      height: 50.h,
      width: 50.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF85D4,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
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
