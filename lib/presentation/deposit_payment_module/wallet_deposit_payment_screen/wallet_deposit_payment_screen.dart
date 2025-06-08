import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/wallet_deposit_payment_controller.dart';
import './widgets/amount_option_item.dart';
import './widgets/bank_option_item.dart';
import './widgets/payment_method_item.dart';

class WalletDepositPaymentScreen
    extends GetWidget<WalletDepositPaymentController> {
  WalletDepositPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Wallet',
        showBackButton: true,
        showBalance: true,
        balance: '1980.00',
        currencySymbol: '₱',
        onBackPressed: () => Get.back(),
        backgroundColor: appTheme.colorFF1B1C,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDepositModeSection(),
            SizedBox(height: 24.h),
            _buildSelectBankSection(),
            SizedBox(height: 24.h),
            _buildDepositAmountSection(),
            SizedBox(height: 24.h),
            _buildPaymentInformationSection(),
            SizedBox(height: 24.h),
            _buildRewardsSection(),
            SizedBox(height: 24.h),
            _buildPromotionInfoSection(),
            SizedBox(height: 24.h),
            _buildDepositButton(),
            SizedBox(height: 16.h),
            _buildDepositRecordButton(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildDepositModeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Deposit mode',
          style: TextStyleHelper.instance.title16Bold,
        ),
        SizedBox(height: 16.h),
        Obx(() => GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.h,
                childAspectRatio: 0.87,
              ),
              itemCount: controller.paymentMethods.length,
              itemBuilder: (context, index) {
                return PaymentMethodItem(
                  paymentMethod: controller.paymentMethods[index],
                  onTap: () => controller.selectPaymentMethod(index),
                );
              },
            )),
      ],
    );
  }

  Widget _buildSelectBankSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select bank',
          style: TextStyleHelper.instance.title16Bold,
        ),
        SizedBox(height: 16.h),
        Obx(() => Row(
              children: [
                Expanded(
                  child: BankOptionItem(
                    bankOption: controller.bankOptions[0],
                    onTap: () => controller.selectBankOption(0),
                  ),
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: BankOptionItem(
                    bankOption: controller.bankOptions[1],
                    onTap: () => controller.selectBankOption(1),
                  ),
                ),
              ],
            )),
      ],
    );
  }

  Widget _buildDepositAmountSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Deposit Amount',
          style: TextStyleHelper.instance.title16Bold,
        ),
        SizedBox(height: 16.h),
        _buildMainAmountDisplay(),
        SizedBox(height: 16.h),
        Obx(() => GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.h,
                childAspectRatio: 1.6,
              ),
              itemCount: controller.amountOptions.length,
              itemBuilder: (context, index) {
                return AmountOptionItem(
                  amountOption: controller.amountOptions[index],
                  onTap: () => controller.selectAmountOption(index),
                );
              },
            )),
      ],
    );
  }

  Widget _buildMainAmountDisplay() {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4B55),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          Container(
            width: 18.h,
            height: 18.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFFFC6,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '₱',
                style: TextStyleHelper.instance.body13,
              ),
            ),
          ),
          SizedBox(width: 12.h),
          Obx(() => Text(
                controller.selectedAmount.value?.toString() ?? '20000',
                style: TextStyleHelper.instance.title16Bold,
              )),
          Spacer(),
          Text(
            'Total: ',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFABB6),
          ),
          Text(
            '+22% Bonus',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFF6D1),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentInformationSection() {
    return RichText(
      text: TextSpan(
        style: TextStyleHelper.instance.label10
            .copyWith(color: appTheme.colorFFF652),
        children: [
          TextSpan(
            text: 'Payment quantity: ',
            style: TextStyleHelper.instance.body12,
          ),
          TextSpan(
            text: '2000 ',
            style: TextStyleHelper.instance.title18,
          ),
          TextSpan(
            text: 'USDT \n',
            style: TextStyleHelper.instance.body12,
          ),
          TextSpan(
            text: 'Exchange rate: ',
            style: TextStyleHelper.instance.body14,
          ),
          TextSpan(
            text: '1 USDT=₱ 58\n',
            style: TextStyleHelper.instance.title18,
          ),
          TextSpan(
            text: 'The rate is for reference only',
            style: TextStyleHelper.instance.body12,
          ),
        ],
      ),
    );
  }

  Widget _buildRewardsSection() {
    return Column(
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup12521,
              height: 20.h,
              width: 20.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'Activity participation rewards',
              style: TextStyleHelper.instance.title16Bold,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle676,
              height: 20.h,
              width: 20.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'Non-participation rewards',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPromotionInfoSection() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 4.h,
              height: 4.h,
              margin: EdgeInsets.only(top: 8.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF8089,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: Text(
                'Recharge a specific amount and you will get a corresponding proportion of real money in one go.',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 4.h,
              height: 4.h,
              margin: EdgeInsets.only(top: 8.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF8089,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 12.h),
            Expanded(
              child: Text(
                'This special Promotion is only open to new users for a limited time!',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDepositButton() {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(25.h),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          borderRadius: BorderRadius.circular(25.h),
          onTap: () => controller.onDepositPressed(),
          child: Center(
            child: Text(
              'Deposit',
              style: TextStyleHelper.instance.title16Bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDepositRecordButton() {
    return Container(
      height: 44.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          borderRadius: BorderRadius.circular(8.h),
          onTap: () => controller.onDepositRecordPressed(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deposit Record',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img1BlueGray400,
                  height: 20.h,
                  width: 22.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
