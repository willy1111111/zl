import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/pix_mobile_vip_withdrawal_limits_controller.dart';
import './widgets/vip_level_row_widget.dart';

class PixMobileVipWithdrawalLimitsScreen
    extends GetWidget<PixMobileVipWithdrawalLimitsController> {
  const PixMobileVipWithdrawalLimitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Wallet',
        showBalance: true,
        balanceAmount: '₱1980.00',
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildVipCard(),
                SizedBox(height: 24.h),
                _buildWithdrawalInfo(),
                SizedBox(height: 16.h),
                _buildWithdrawalDetails(),
                SizedBox(height: 16.h),
                _buildTotalRedemptionInfo(),
                SizedBox(height: 24.h),
                _buildAmountInput(),
                SizedBox(height: 16.h),
                _buildWithdrawalFeeInfo(),
                SizedBox(height: 16.h),
                _buildTransactionPasswordField(),
                SizedBox(height: 24.h),
                _buildSubmitButton(),
                SizedBox(height: 24.h),
                _buildWithdrawalRecord(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          _buildFloatingElements(),
          Obx(() => controller.isVipModalVisible.value
              ? _buildVipUpgradeModal()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildVipCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF33C38F), Color(0xFF3352C3)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    width: 18.h,
                    height: 17.h,
                  ),
                  SizedBox(width: 12.h),
                  Text(
                    'PIX-MOBILE',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                height: 1.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFC700), Color(0xFFFFC700)],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                '******8927',
                style: TextStyleHelper.instance.headline24Black,
              ),
              SizedBox(height: 16.h),
              Text(
                '2023-05-03',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          Positioned(
            top: 37.h,
            right: 16.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52,
              width: 74.h,
              height: 80.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Withdrawaltime(GMT+8): 00:00 -00:00',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Withdrawal Available: ',
                style: TextStyleHelper.instance.title16Bold,
              ),
              TextSpan(
                text: '₱ 0',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.colorFFFFC6),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWithdrawalDetails() {
    return Column(
      children: [
        _buildDetailRow('Single Withdrawal: ', '10 - 999', true),
        SizedBox(height: 8.h),
        _buildDetailRow('Withdrawal fee: ', '3%', false),
        SizedBox(height: 8.h),
        _buildDetailRow('Single Withdrawal: ', '1 times/Day', false),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value, bool showInfo) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
        Text(
          value,
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
        if (showInfo) ...[
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath: ImageConstant.img1BlueGray400,
            width: 16.h,
            height: 16.h,
          ),
        ],
      ],
    );
  }

  Widget _buildTotalRedemptionInfo() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF2B2B),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Total redemption value: ',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                TextSpan(
                  text: '₱ 135',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Complete the remaining required bets：135,999.19\nTo increase your Withdrawal Available，',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 8.h),
          Row(
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
        ],
      ),
    );
  }

  Widget _buildAmountInput() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        children: [
          Container(
            width: 18.h,
            height: 18.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse25,
                  width: 18.h,
                  height: 18.h,
                ),
                Text(
                  '₱',
                  style: TextStyleHelper.instance.body13,
                ),
              ],
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Obx(
              () => TextFormField(
                controller: controller.amountController,
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
                onChanged: (value) => controller.onAmountChanged(value),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img7,
            width: 17.h,
            height: 15.h,
            onTap: () => controller.clearAmount(),
          ),
        ],
      ),
    );
  }

  Widget _buildWithdrawalFeeInfo() {
    return Row(
      children: [
        Text(
          'Withdrawal fee: ',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
        Obx(
          () => Text(
            controller.withdrawalFee.value ?? '₱0',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ),
        SizedBox(width: 8.h),
        CustomImageView(
          imagePath: ImageConstant.img1BlueGray400,
          width: 16.h,
          height: 16.h,
        ),
      ],
    );
  }

  Widget _buildTransactionPasswordField() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        border: Border.all(color: appTheme.colorFF4554),
        borderRadius: BorderRadius.circular(6.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: TextFormField(
        controller: controller.passwordController,
        obscureText: true,
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.whiteCustom),
        decoration: InputDecoration(
          hintText: 'Transaction Password',
          hintStyle: TextStyleHelper.instance.body14Bold
              .copyWith(color: appTheme.colorFF8089),
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.zero,
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return CustomButton(
      text: 'Submit',
      variant: CustomButtonVariant.gradient,
      width: double.maxFinite,
      onPressed: () => controller.onSubmitPressed(),
    );
  }

  Widget _buildWithdrawalRecord() {
    return GestureDetector(
      onTap: () => controller.onWithdrawalRecordPressed(),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.all(16.h),
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
              width: 14.h,
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingElements() {
    return Stack(
      children: [
        Positioned(
          top: 271.h,
          right: 27.h,
          child: GestureDetector(
            onTap: () => controller.showVipModal(),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup668,
              width: 50.h,
              height: 50.h,
            ),
          ),
        ),
        Positioned(
          top: 260.h,
          left: 172.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup821,
            width: 32.h,
            height: 5.h,
          ),
        ),
      ],
    );
  }

  Widget _buildVipUpgradeModal() {
    return GestureDetector(
      onTap: () => controller.hideVipModal(),
      child: Container(
        color: appTheme.blackCustom.withAlpha(128),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.h),
                  topRight: Radius.circular(16.h),
                ),
                border: Border.all(color: appTheme.colorFF2C35),
              ),
              constraints: BoxConstraints(maxHeight: 556.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildModalHeader(),
                  Expanded(child: _buildVipTable()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader() {
    return Container(
      padding: EdgeInsets.all(24.h),
      child: Stack(
        children: [
          Center(
            child: Text(
              'Upgrading your VlP level can increase\nyour withdrawal limit',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              onTap: () => controller.hideVipModal(),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup,
                width: 14.h,
                height: 14.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.colorFF1516),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Expanded(
            child: ListView.builder(
              itemCount: controller.vipLevels.length,
              itemBuilder: (context, index) {
                return VipLevelRowWidget(
                  vipLevel: controller.vipLevels[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF60B100), Color(0xFF386800)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.h),
          topRight: Radius.circular(5.h),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 60.h,
            alignment: Alignment.center,
            child: Text(
              'VIP level',
              style: TextStyleHelper.instance.body12Black,
            ),
          ),
          Container(width: 1.h, height: 50.h, color: appTheme.color7F315A),
          Container(
            width: 72.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup12010,
                  width: 26.h,
                  height: 24.h,
                ),
                Text(
                  'withdrawal fee',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFEAEA),
                ),
              ],
            ),
          ),
          Container(width: 1.h, height: 50.h, color: appTheme.color7F315A),
          Container(
            width: 81.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage29,
                  width: 25.h,
                  height: 25.h,
                ),
                Text(
                  'Number Of Withdrawals',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFEAEA),
                ),
              ],
            ),
          ),
          Container(width: 1.h, height: 50.h, color: appTheme.color7F315A),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage30,
                  width: 17.h,
                  height: 17.h,
                ),
                Text(
                  'Single Withdrawal Limit',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFEAEA),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
