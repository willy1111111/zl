import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_labeled_text.dart';
import './controller/usdt_withdrawal_controller.dart';

class UsdtWithdrawalScreen extends GetWidget<UsdtWithdrawalController> {
  const UsdtWithdrawalScreen({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            _buildWalletTypeTabs(),
            SizedBox(height: 24.h),
            _buildActiveTabIndicator(),
            SizedBox(height: 24.h),
            _buildUsdtCard(),
            SizedBox(height: 24.h),
            _buildPageIndicator(),
            SizedBox(height: 24.h),
            _buildWithdrawalInfo(),
            SizedBox(height: 24.h),
            _buildTotalRedemptionCard(),
            SizedBox(height: 16.h),
            _buildWithdrawalAvailable(),
            SizedBox(height: 16.h),
            _buildWithdrawalAmountInput(),
            SizedBox(height: 16.h),
            _buildFeeAndExchangeInfo(),
            SizedBox(height: 24.h),
            _buildPasswordConfirmation(),
            SizedBox(height: 24.h),
            _buildSubmitButton(),
            SizedBox(height: 24.h),
            _buildWithdrawalRecord(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
      floatingActionButton: _buildAddButton(),
    );
  }

  Widget _buildWalletTypeTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildTabItem(
          iconPath: ImageConstant.imgGroup2131329909,
          title: 'Electronic\nwallet',
          isSelected: false,
        ),
        _buildTabItem(
          iconPath: ImageConstant.imgGroup2131329908,
          title: 'Bank\nAccounts',
          isSelected: false,
        ),
        _buildTabItem(
          iconPath: ImageConstant.imgGroup2131329901,
          title: 'Crypto\nWallet',
          isSelected: true,
        ),
      ],
    );
  }

  Widget _buildTabItem({
    required String iconPath,
    required String title,
    required bool isSelected,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: iconPath,
          height: 30.h,
          width: 30.h,
        ),
        SizedBox(height: 8.h),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body14.copyWith(
              color: isSelected ? Color(0xFF85D420) : appTheme.whiteCustom,
              height: 1.14),
        ),
      ],
    );
  }

  Widget _buildActiveTabIndicator() {
    return Stack(
      children: [
        Container(
          width: double.maxFinite,
          height: 2.h,
          color: appTheme.colorFF292F,
        ),
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
    );
  }

  Widget _buildUsdtCard() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131329901,
                      height: 18.h,
                      width: 18.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      'USDT(TRC20)',
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(height: 1.38),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Container(
                  width: 144.h,
                  height: 1.h,
                  color: appTheme.colorFFFFC7,
                ),
                SizedBox(height: 16.h),
                Text(
                  'TP****LfXH',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(height: 1.42, shadows: [
                    Shadow(
                      offset: Offset(0, 1.h),
                      blurRadius: 2.h,
                      color: appTheme.blackCustom,
                    ),
                  ]),
                ),
                SizedBox(height: 16.h),
                Text(
                  '2025-01-03',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
                height: 80.h,
                width: 74.h,
              ),
              Container(
                width: 88.h,
                height: 9.h,
                decoration: BoxDecoration(
                  color: appTheme.color7F3F3F,
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF8888,
                      offset: Offset(0, 4.h),
                      blurRadius: 12.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Center(
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup821,
        height: 5.h,
        width: 32.h,
      ),
    );
  }

  Widget _buildAddButton() {
    return Positioned(
      right: 16.h,
      top: 320.h,
      child: GestureDetector(
        onTap: () {
          controller.onAddButtonPressed();
        },
        child: Container(
          width: 50.h,
          height: 50.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF85D4,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              '+',
              style: TextStyleHelper.instance.headline24Bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWithdrawalInfo() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup2131329917,
          height: 50.h,
          width: 345.h,
        ),
        SizedBox(height: 16.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Withdrawaltime(GMT+8): 00:00 -23:59',
              style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
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
              labelStyle:
                  TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
              valueStyle: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF85D4, height: 1.17),
            ),
            SizedBox(height: 12.h),
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
    );
  }

  Widget _buildTotalRedemptionCard() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
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
            marginBottom: 12.h,
            isCapitalized: true,
          ),
          Text(
            'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，',
            style: TextStyleHelper.instance.body12Bold.copyWith(height: 1.33),
          ),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: () {
              controller.onBetNowPressed();
            },
            child: Text(
              'Bet Now→',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: appTheme.colorFF51A0,
                  height: 1.17,
                  decoration: TextDecoration.underline),
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

  Widget _buildWithdrawalAmountInput() {
    return Container(
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
          SizedBox(width: 16.h),
          Expanded(
            child: Obx(
              () => TextFormField(
                controller: controller.amountController,
                keyboardType: TextInputType.number,
                onChanged: (value) => controller.onAmountChanged(value),
                style: TextStyleHelper.instance.body14Bold.copyWith(
                    color: controller.isAmountValid.value
                        ? Color(0xFF85D420)
                        : appTheme.colorFFF652,
                    height: 1.21),
                decoration: InputDecoration(
                  hintText: 'Please enter the withdrawal amount',
                  hintStyle: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
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
          labelStyle:
              TextStyleHelper.instance.body12Bold.copyWith(height: 1.17),
          valueStyle: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF85D4, height: 1.17),
          marginBottom: 8.h,
          isCapitalized: true,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Payment quantity: ',
                    style:
                        TextStyleHelper.instance.body12.copyWith(height: 1.33),
                  ),
                  TextSpan(
                    text: '--- ',
                    style:
                        TextStyleHelper.instance.title18.copyWith(height: 1.33),
                  ),
                  TextSpan(
                    text: 'USDT',
                    style:
                        TextStyleHelper.instance.body12.copyWith(height: 1.33),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Exchange rate: ',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFF652, height: 1.33),
                  ),
                  TextSpan(
                    text: '1 USDT=₱ 58',
                    style:
                        TextStyleHelper.instance.title18.copyWith(height: 1.33),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'The rate is for reference only',
              style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPasswordConfirmation() {
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
            child: Obx(
              () => TextFormField(
                controller: controller.passwordController,
                obscureText: !controller.isPasswordVisible.value,
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.21),
                decoration: InputDecoration(
                  hintText: 'Confirm password',
                  hintStyle: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
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
      gradientColors: [Color(0xFF363C41), Color(0xFF2B3035)],
    );
  }

  Widget _buildWithdrawalRecord() {
    return GestureDetector(
      onTap: () => controller.onWithdrawalRecordPressed(),
      child: Container(
        width: double.maxFinite,
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
    );
  }
}
