import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/wallet_deposit_controller.dart';
import './widgets/amount_button_item.dart';
import './widgets/bank_selection_item.dart';
import './widgets/payment_method_item.dart';

class WalletDepositScreen extends GetWidget<WalletDepositController> {
  const WalletDepositScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: CustomAppBar(
            title: 'Wallet',
            showBackButton: true,
            showStatusBar: true,
            showBalance: true,
            balance: '1980.00',
            currencySymbol: '₱',
            onBackPressed: () {
              Get.back();
            },
            onBalancePressed: () {
              controller.onBalancePressed();
            }),
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 16.h),
              _buildDepositModeSection(),
              SizedBox(height: 24.h),
              _buildPaymentMethodsGrid(),
              SizedBox(height: 24.h),
              _buildSelectBankSection(),
              SizedBox(height: 24.h),
              _buildDepositAmountSection(),
              SizedBox(height: 24.h),
              _buildAmountButtonsGrid(),
              SizedBox(height: 24.h),
              _buildExchangeRateInfo(),
              SizedBox(height: 24.h),
              _buildRewardsSection(),
              SizedBox(height: 24.h),
              _buildDepositButton(),
              SizedBox(height: 16.h),
              _buildDepositRecordButton(),
              SizedBox(height: 20.h),
            ])));
  }

  Widget _buildDepositModeSection() {
    return Text('Deposit mode', style: TextStyleHelper.instance.title16Bold);
  }

  Widget _buildPaymentMethodsGrid() {
    return Obx(() => Column(children: [
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.87,
                  crossAxisSpacing: 8.h,
                  mainAxisSpacing: 8.h),
              itemCount: controller.paymentMethods.length,
              itemBuilder: (context, index) {
                return PaymentMethodItem(
                    paymentMethod: controller.paymentMethods[index],
                    onTap: () => controller.selectPaymentMethod(index));
              }),
          SizedBox(height: 8.h),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.87,
                  crossAxisSpacing: 8.h,
                  mainAxisSpacing: 8.h),
              itemCount: controller.secondRowPaymentMethods.length,
              itemBuilder: (context, index) {
                return PaymentMethodItem(
                    paymentMethod: controller.secondRowPaymentMethods[index],
                    onTap: () =>
                        controller.selectSecondRowPaymentMethod(index));
              }),
        ]));
  }

  Widget _buildSelectBankSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Select bank', style: TextStyleHelper.instance.title16Bold),
      SizedBox(height: 16.h),
      Obx(() => Row(
              children: controller.bankOptions.asMap().entries.map((entry) {
            int index = entry.key;
            var bank = entry.value;
            return Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: BankSelectionItem(
                    bank: bank, onTap: () => controller.selectBank(index)));
          }).toList())),
    ]);
  }

  Widget _buildDepositAmountSection() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Deposit Amount', style: TextStyleHelper.instance.title16Bold),
      SizedBox(height: 16.h),
      Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: appTheme.colorFF1B1C,
              border: Border.all(color: appTheme.colorFF4B55),
              borderRadius: BorderRadius.circular(8.h)),
          padding: EdgeInsets.symmetric(horizontal: 12.h),
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
                    controller.depositAmount!.value.isEmpty ?? true
                        ? 'Please fill in deposit amount 100-50000'
                        : '${controller.depositAmount!.value}',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color: controller.depositAmount!.value.isEmpty ?? true
                            ? Color(0xFFABB6CA)
                            : appTheme.whiteCustom)))),
          ])),
    ]);
  }

  Widget _buildAmountButtonsGrid() {
    return Obx(() => Column(children: [
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.6,
                  crossAxisSpacing: 8.h,
                  mainAxisSpacing: 8.h),
              itemCount: controller.firstRowAmounts.length,
              itemBuilder: (context, index) {
                return AmountButtonItem(
                    amount: controller.firstRowAmounts[index],
                    onTap: () => controller.selectAmount(
                        controller.firstRowAmounts[index].amount?.value ?? ''));
              }),
          SizedBox(height: 8.h),
          GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1.6,
                  crossAxisSpacing: 8.h,
                  mainAxisSpacing: 8.h),
              itemCount: controller.secondRowAmounts.length,
              itemBuilder: (context, index) {
                return AmountButtonItem(
                    amount: controller.secondRowAmounts[index],
                    onTap: () => controller.selectAmount(
                        controller.secondRowAmounts[index].amount?.value ??
                            ''));
              }),
        ]));
  }

  Widget _buildExchangeRateInfo() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Payment quantity: — — USDT',
          style: TextStyleHelper.instance.body12
              .copyWith(color: appTheme.colorFFF652)),
      SizedBox(height: 4.h),
      RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'Exchange rate: ',
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFFF652)),
        TextSpan(
            text: '1 USDT=₱ 58',
            style: TextStyleHelper.instance.title18
                .copyWith(color: appTheme.colorFFF652)),
      ])),
      SizedBox(height: 4.h),
      Text('The rate is for reference only',
          style: TextStyleHelper.instance.body12
              .copyWith(color: appTheme.colorFFF652)),
    ]);
  }

  Widget _buildRewardsSection() {
    return Column(children: [
      Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgGroup12521, height: 20.h, width: 20.h),
        SizedBox(width: 12.h),
        Text('Activity participation rewards',
            style: TextStyleHelper.instance.title16Bold),
      ]),
      SizedBox(height: 16.h),
      Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgRectangle676,
            height: 20.h,
            width: 20.h),
        SizedBox(width: 12.h),
        Text('Non-participation rewards',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.colorFF8089)),
      ]),
      SizedBox(height: 24.h),
      _buildPromotionDetails(),
    ]);
  }

  Widget _buildPromotionDetails() {
    return Column(children: [
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: 4.h,
            height: 4.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
                color: appTheme.colorFF8089, shape: BoxShape.circle)),
        SizedBox(width: 12.h),
        Expanded(
            child: Text(
                'Recharge a specific amount and you will get a corresponding proportion of real money in one go.',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.0))),
      ]),
      SizedBox(height: 8.h),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            width: 4.h,
            height: 4.h,
            margin: EdgeInsets.only(top: 8.h),
            decoration: BoxDecoration(
                color: appTheme.colorFF8089, shape: BoxShape.circle)),
        SizedBox(width: 12.h),
        Expanded(
            child: Text(
                'This special Promotion is only open to new users for a limited time!',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089, height: 1.0))),
      ]),
    ]);
  }

  Widget _buildDepositButton() {
    return GestureDetector(
        onTap: () {
          controller.onDepositPressed();
        },
        child: Container(
            width: double.infinity,
            height: 50.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)]),
                borderRadius: BorderRadius.circular(25.h)),
            child: Center(
                child: Text('Deposit',
                    style: TextStyleHelper.instance.title16Bold))));
  }

  Widget _buildDepositRecordButton() {
    return GestureDetector(
        onTap: () {
          controller.onDepositRecordPressed();
        },
        child: Container(
            height: 44.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(8.h)),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Deposit Record',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4)),
                  CustomImageView(
                      imagePath: ImageConstant.img1BlueGray400,
                      height: 22.h,
                      width: 20.h),
                ])));
  }
}
