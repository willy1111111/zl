import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/wallet_deposit_amount_controller.dart';
import './widgets/amount_option_item.dart';
import './widgets/deposit_mode_item.dart';
import './widgets/payment_method_item.dart';

class WalletDepositAmountScreen
    extends GetWidget<WalletDepositAmountController> {
  const WalletDepositAmountScreen({Key? key}) : super(key: key);

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
            onBalancePressed: () => controller.onBalancePressed()),
        body: Stack(children: [
          SingleChildScrollView(
              padding: EdgeInsets.all(16.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDepositModeSection(),
                    SizedBox(height: 24.h),
                    _buildPaymentChannelSection(),
                    SizedBox(height: 24.h),
                    _buildDepositAmountSection(),
                    SizedBox(height: 24.h),
                    _buildPromotionalInfo(),
                    SizedBox(height: 24.h),
                    _buildDepositButton(),
                    SizedBox(height: 24.h),
                    _buildDepositRecord(),
                    SizedBox(height: 20.h),
                  ])),
          Obx(() => controller.isLoading.value
              ? _buildLoadingModal()
              : SizedBox.shrink()),
        ]));
  }

  Widget _buildDepositModeSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Deposit mode', style: TextStyleHelper.instance.title16Bold),
      SizedBox(height: 16.h),
      Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12.h,
              mainAxisSpacing: 12.h,
              childAspectRatio: 1.0),
          itemCount: controller.depositMethods.length,
          itemBuilder: (context, index) {
            return DepositModeItem(
                depositMethod: controller.depositMethods[index],
                isSelected:
                    controller.selectedDepositMethodIndex.value == index,
                onTap: () => controller.selectDepositMethod(index));
          })),
    ]);
  }

  Widget _buildPaymentChannelSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Payment channel', style: TextStyleHelper.instance.title16Bold),
      SizedBox(height: 16.h),
      Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12.h,
              mainAxisSpacing: 12.h,
              childAspectRatio: 2.0),
          itemCount: controller.paymentMethods.length,
          itemBuilder: (context, index) {
            return PaymentMethodItem(
                paymentMethod: controller.paymentMethods[index],
                isSelected:
                    controller.selectedPaymentMethodIndex.value == index,
                onTap: () => controller.selectPaymentMethod(index));
          })),
    ]);
  }

  Widget _buildDepositAmountSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Deposit Amount', style: TextStyleHelper.instance.title16Bold),
      SizedBox(height: 16.h),
      _buildAmountInput(),
      SizedBox(height: 16.h),
      Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12.h,
              mainAxisSpacing: 12.h,
              childAspectRatio: 1.6),
          itemCount: controller.amountOptions.length,
          itemBuilder: (context, index) {
            return AmountOptionItem(
                amountOption: controller.amountOptions[index],
                isSelected: controller.selectedAmountIndex.value == index,
                onTap: () => controller.selectAmount(index));
          })),
    ]);
  }

  Widget _buildAmountInput() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF1B1C,
            border: Border.all(color: appTheme.colorFF4B55),
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.all(12.h),
        child: Row(children: [
          Container(
              width: 18.h,
              height: 18.h,
              decoration: BoxDecoration(
                  color: appTheme.colorFFFFC6, shape: BoxShape.circle),
              child: Center(
                  child: Text('₱', style: TextStyleHelper.instance.body13))),
          SizedBox(width: 12.h),
          Expanded(
              child: Obx(() => Text(
                  controller.selectedAmount!.value ??
                      '20', // Modified: Removed extra .value access
                  style: TextStyleHelper.instance.title16Bold))),
          CustomImageView(
              imagePath: ImageConstant.img7, height: 17.h, width: 15.h),
        ]));
  }

  Widget _buildPromotionalInfo() {
    return Column(children: [
      _buildPromoPoint(
          'Recharge a specific amount and you will get a corresponding\nproportion of real money in one go.'),
      SizedBox(height: 8.h),
      _buildPromoPoint(
          'This special Promotion is only open to new users for a limited\ntime!'),
      SizedBox(height: 8.h),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: 4.h,
            height: 4.h,
            margin: EdgeInsets.only(top: 8.h, right: 8.h),
            decoration: BoxDecoration(
                color: appTheme.colorFF8089, shape: BoxShape.circle)),
        Expanded(
            child: RichText(
                text: TextSpan(children: [
          TextSpan(text: '20%', style: TextStyleHelper.instance.title16Bold),
          TextSpan(text: ' ', style: TextStyleHelper.instance.body14Bold),
          TextSpan(
              text: 'CASH BACK EVERY WEEK',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFE54D)),
        ]))),
      ]),
    ]);
  }

  Widget _buildPromoPoint(String text) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 4.h,
          height: 4.h,
          margin: EdgeInsets.only(top: 8.h, right: 8.h),
          decoration: BoxDecoration(
              color: appTheme.colorFF8089, shape: BoxShape.circle)),
      Expanded(
          child: Text(text,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.0))),
    ]);
  }

  Widget _buildDepositButton() {
    return Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF76CD00), Color(0xFF478A03)]),
            borderRadius: BorderRadius.circular(25.h)),
        child: Material(
            color: appTheme.transparentCustom,
            child: InkWell(
                borderRadius: BorderRadius.circular(25.h),
                onTap: () => controller.onDepositPressed(),
                child: Center(
                    child: Text('Deposit',
                        style: TextStyleHelper.instance.title16Bold)))));
  }

  Widget _buildDepositRecord() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h)),
        padding: EdgeInsets.all(12.h),
        height: 44.h,
        child: InkWell(
            onTap: () => controller.onDepositRecordPressed(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Deposit Record',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4)),
                  CustomImageView(
                      imagePath: ImageConstant.img1BlueGray400,
                      height: 20.h,
                      width: 22.h),
                ])));
  }

  Widget _buildLoadingModal() {
    return Container(
        color: appTheme.blackCustom.withAlpha(128),
        child: Center(
            child: Container(
                width: 252.h,
                height: 153.h,
                decoration: BoxDecoration(
                    color: appTheme.colorFF4B55,
                    border: Border.all(color: appTheme.colorFF282F),
                    borderRadius: BorderRadius.circular(12.h)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 53.h,
                          height: 53.h,
                          child: CircularProgressIndicator(
                              strokeWidth: 3.h,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  appTheme.colorFFF6D1),
                              backgroundColor: appTheme.colorFFC0C8)),
                      SizedBox(height: 16.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Text('Submitting deposit request ...',
                              style: TextStyleHelper.instance.title18Bold
                                  .copyWith(height: 1.1),
                              textAlign: TextAlign.center)),
                    ]))));
  }
}
