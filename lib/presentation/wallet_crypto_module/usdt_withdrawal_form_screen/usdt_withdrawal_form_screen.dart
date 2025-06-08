import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_labeled_text.dart';
import '../../widgets/custom_number_input.dart';
import './controller/usdt_withdrawal_form_controller.dart';
import './widgets/crypto_card_widget.dart';
import './widgets/withdrawal_tab_item_widget.dart';

class UsdtWithdrawalFormScreen extends GetWidget<UsdtWithdrawalFormController> {
  UsdtWithdrawalFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Wallet',
        onBackPressed: () => Get.back(),
        showBalance: true,
        balanceAmount: '₱1980.00',
        balanceIcon: ImageConstant.imgGroup736,
        balanceActionIcon: ImageConstant.img1LightGreenA700,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            _buildWalletTypeTabs(),
            SizedBox(height: 24.h),
            _buildProgressIndicator(),
            SizedBox(height: 24.h),
            CryptoCardWidget(),
            SizedBox(height: 24.h),
            _buildPageIndicator(),
            SizedBox(height: 24.h),
            _buildWithdrawalInfo(),
            SizedBox(height: 24.h),
            _buildTotalRedemptionCard(),
            SizedBox(height: 16.h),
            _buildWithdrawalAvailable(),
            SizedBox(height: 16.h),
            _buildAmountInput(),
            SizedBox(height: 16.h),
            _buildFeeAndExchangeInfo(),
            SizedBox(height: 24.h),
            _buildPasswordInput(),
            SizedBox(height: 24.h),
            _buildSubmitButton(),
            SizedBox(height: 24.h),
            _buildWithdrawalRecord(),
            SizedBox(height: 100.h),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildWalletTypeTabs() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            WithdrawalTabItemWidget(
              icon: ImageConstant.imgGroup2131329909,
              title: 'Electronic\nwallet',
              isSelected: controller.selectedTabIndex.value == 0,
              onTap: () => controller.selectTab(0),
            ),
            WithdrawalTabItemWidget(
              icon: ImageConstant.imgGroup2131329908,
              title: 'Bank\nAccounts',
              isSelected: controller.selectedTabIndex.value == 1,
              onTap: () => controller.selectTab(1),
            ),
            WithdrawalTabItemWidget(
              icon: ImageConstant.imgGroup2131329901,
              title: 'Crypto\nWallet',
              isSelected: controller.selectedTabIndex.value == 2,
              onTap: () => controller.selectTab(2),
            ),
          ],
        ));
  }

  Widget _buildProgressIndicator() {
    return Container(
      width: double.infinity,
      height: 2.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF292F,
        borderRadius: BorderRadius.circular(1.h),
      ),
      child: Obx(() => Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: Get.width * 0.33,
              height: 2.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF85D4,
                borderRadius: BorderRadius.circular(1.h),
              ),
            ),
          )),
    );
  }

  Widget _buildPageIndicator() {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup821,
        height: 5.h,
        width: 32.h,
      ),
    );
  }

  Widget _buildWithdrawalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Withdrawaltime(GMT+8): 00:00 -23:59',
          style: TextStyleHelper.instance.body12Bold,
        ),
        SizedBox(height: 12.h),
        CustomInfoRow(
          labelText: 'Single withdrawal Integer within: ',
          valueText: '200-3000',
          fontSize: 12.fSize,
          isBold: true,
          iconSpacing: 8.h,
        ),
        SizedBox(height: 12.h),
        CustomLabeledText(
          labelText: 'Withdrawal fee: ',
          valueText: '0%',
          labelStyle: TextStyleHelper.instance.body12Bold,
          valueStyle: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
        SizedBox(height: 12.h),
        CustomLabeledText(
          labelText: 'Number of Withdrawals: ',
          valueText: 'limited',
          labelStyle: TextStyleHelper.instance.body12Bold,
          valueStyle: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
      ],
    );
  }

  Widget _buildTotalRedemptionCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF3535),
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
            marginBottom: 8.h,
          ),
          Text(
            'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，',
            style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.33),
          ),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: () => controller.onBetNowTap(),
            child: Row(
              children: [
                Text(
                  'Bet Now',
                  style: TextStyleHelper.instance.body12Bold.copyWith(
                      color: appTheme.colorFF51A0,
                      decoration: TextDecoration.underline),
                ),
                Text(
                  '→',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF51A0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalAvailable() {
    return CustomInfoRow(
      labelText: 'Withdrawal Available: ',
      valueText: '₱ 0',
      labelColor: appTheme.whiteCustom,
      valueColor: appTheme.colorFFFFC6,
      fontSize: 16.fSize,
      isBold: true,
      iconSpacing: 8.h,
    );
  }

  Widget _buildAmountInput() {
    return Container(
      padding: EdgeInsets.all(16.h),
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
            child: Stack(
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
                    style: TextStyleHelper.instance.body13,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: CustomNumberInput(
              controller: controller.amountController,
              initialValue: '2000',
              onChanged: (value) => controller.updateAmount(value),
            ),
          ),
          SizedBox(width: 16.h),
          CustomImageView(
            imagePath: ImageConstant.img6,
            height: 17.h,
            width: 16.h,
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
          labelStyle: TextStyleHelper.instance.body12Bold,
          valueStyle: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
        SizedBox(height: 8.h),
        Obx(() => RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Payment quantity: ',
                    style: TextStyleHelper.instance.body12,
                  ),
                  TextSpan(
                    text: controller.paymentQuantity.value,
                    style: TextStyleHelper.instance.title18
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                  TextSpan(
                    text: ' USDT',
                    style: TextStyleHelper.instance.title18,
                  ),
                ],
              ),
            )),
        SizedBox(height: 4.h),
        Text(
          'Exchange rate: 1 USDT=₱ 58',
          style: TextStyleHelper.instance.body14
              .copyWith(color: appTheme.colorFFF652),
        ),
        SizedBox(height: 4.h),
        Text(
          'The rate is for reference only',
          style: TextStyleHelper.instance.body12,
        ),
      ],
    );
  }

  Widget _buildPasswordInput() {
    return Container(
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
          SizedBox(width: 16.h),
          Expanded(
            child: Obx(() => TextFormField(
                  controller: controller.passwordController,
                  obscureText: controller.isPasswordHidden.value,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                )),
          ),
          SizedBox(width: 16.h),
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
    return CustomGradientButton(
      text: 'Submit',
      onPressed: () => controller.onSubmitPressed(),
      isFullWidth: true,
      textColor: appTheme.colorFF8089,
      gradientColors: [
        Color(0xFF363C41),
        appTheme.colorFF2B30,
      ],
    );
  }

  Widget _buildWithdrawalRecord() {
    return GestureDetector(
      onTap: () => controller.onWithdrawalRecordTap(),
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
                  .copyWith(color: appTheme.colorFF85D4),
            ),
            CustomImageView(
              imagePath: ImageConstant.img1WhiteA700,
              height: 15.h,
              width: 14.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return GestureDetector(
      onTap: () => controller.onFabPressed(),
      child: Container(
        width: 50.h,
        height: 50.h,
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
      ),
    );
  }
}
