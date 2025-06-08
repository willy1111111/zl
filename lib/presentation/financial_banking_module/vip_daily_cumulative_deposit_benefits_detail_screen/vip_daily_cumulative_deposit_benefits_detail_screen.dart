import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_display.dart';
import './controller/vip_daily_cumulative_deposit_benefits_detail_controller.dart';
import './models/deposit_entry_model.dart';
import './widgets/bonus_card_widget.dart';
import './widgets/deposit_table_widget.dart';
import './widgets/vip_card_widget.dart';

class VipDailyCumulativeDepositBenefitsDetailScreen
    extends GetWidget<VipDailyCumulativeDepositBenefitsDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Daily Cumulative Deposit',
        height: CustomAppBarHeight.standard,
        showBalance: true,
        balanceAmount: '₱1980.00',
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10.h),
            _buildCurrentVipStatusCard(),
            SizedBox(height: 10.h),
            _buildBonusCard(),
            SizedBox(height: 55.h),
            _buildBenefitsHeader(),
            SizedBox(height: 16.h),
            _buildVipDescription(),
            SizedBox(height: 24.h),
            _buildVipCardsGrid(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentVipStatusCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          Container(
            width: 141.h,
            height: 165.h,
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage244,
                  width: 141.h,
                  height: 165.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 23.h,
                  left: 55.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconvip1,
                    width: 56.h,
                    height: 56.h,
                  ),
                ),
                Positioned(
                  top: 8.h,
                  left: 67.h,
                  child: Text(
                    'VIP1',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.blackCustom),
                  ),
                ),
                Positioned(
                  top: 70.h,
                  left: 29.h,
                  child: Text(
                    '₱10.00',
                    style: TextStyleHelper.instance.headline30Black
                        .copyWith(height: 1.43),
                  ),
                ),
                Positioned(
                  top: 115.h,
                  left: 67.h,
                  child: Text(
                    'MAX',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.blackCustom),
                  ),
                ),
                Positioned(
                  top: 146.h,
                  left: 10.h,
                  right: 10.h,
                  child: DepositTableWidget(
                    depositEntries: [
                      DepositEntryModel(
                          deposit: '₱150'.obs, reward: '₱2.00'.obs),
                      DepositEntryModel(
                          deposit: '₱250'.obs, reward: '₱4.00'.obs),
                      DepositEntryModel(
                          deposit: '₱500'.obs, reward: '₱6.00'.obs),
                    ].obs, // Modified: Added required depositEntries parameter
                  ),
                ),
                Positioned(
                  top: 164.h,
                  left: 0,
                  child: Container(
                    width: 1.h,
                    height: 165.h,
                    color: appTheme.colorFF2528,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 32.h,
            right: 16.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Current VIP：',
                      style: TextStyleHelper.instance.body12,
                    ),
                    Text(
                      'VIP1',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFFFFC6),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total bets placed today：',
                      style: TextStyleHelper.instance.body12,
                    ),
                    Text(
                      '₱150.50',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimated cashback today：',
                      style: TextStyleHelper.instance.body12,
                    ),
                    Text(
                      '₱2.90',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                CustomButton(
                  text: 'Deposit Now',
                  variant: CustomButtonVariant.gradient,
                  width: 100.h,
                  height: 36.h,
                  onPressed: () => controller.onDepositNowPressed(),
                ),
              ],
            ),
          ),
          Positioned(
            top: 87.h,
            right: 16.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgSubtractBlueGray40014x14,
              width: 14.h,
              height: 14.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusCard() {
    return BonusCardWidget();
  }

  Widget _buildBenefitsHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF0C5D,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle620,
                  width: 276.h,
                  height: 60.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomRichTextDisplay(
                      textSpans: [
                        CustomTextSpan(text: 'VIP Daily Cumulative Deposit '),
                        CustomTextSpan(text: 'Benefits'),
                      ],
                      fontSize: 16.fSize,
                      defaultColor: appTheme.whiteCustom,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'The higher the level, the more\nthe Cumulative Deposit bonus',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFFFFC6, shadows: [
                        Shadow(
                          offset: Offset(0, 1.h),
                          blurRadius: 1.h,
                          color: appTheme.blackCustom,
                        ),
                      ]),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 51.h,
                  child: CustomImageView(
                    imagePath: ImageConstant
                        .img003c43379e03cb1b39665abbcbdfb918f34e18e8977fcl4agd1,
                    width: 51.h,
                    height: 22.h,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -20.h,
            right: 25.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img0867343e1b2a94d23faebd743b153cfab88dc3f999116r6tuknfw12001,
              width: 66.h,
              height: 67.h,
            ),
          ),
          Positioned(
            top: 67.h,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img015b2e1a09d09e1aa24dd5d2582263d5c5d8363db5097akcxog3,
              width: 176.h,
              height: 175.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipDescription() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'VIP Cumulative Deposit',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(height: 8.h),
          Text(
            '1.In our Daily Accumulated Recharge Event, generous rewards are available daily\n2. You have placed a deposit today. It will refresh at 0:00 every day and is valid for one day. If you do not claim it by 0:00 the next day, it will be considered abandoned and automatically reset to zero.\n3. The cashback rewards for different VIP levels vary. Please refer to the benefits corresponding to your level below. Each user can claim this reward only once per day',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.17),
          ),
        ],
      ),
    );
  }

  Widget _buildVipCardsGrid() {
    return Obx(() => Container(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              // Row 1: VIP0 and VIP1
              Row(
                children: [
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[0])),
                  SizedBox(width: 16.h),
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[1])),
                ],
              ),
              SizedBox(height: 16.h),
              // Row 2: VIP2 and VIP3
              Row(
                children: [
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[2])),
                  SizedBox(width: 16.h),
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[3])),
                ],
              ),
              SizedBox(height: 16.h),
              // Row 3: VIP4 and VIP5
              Row(
                children: [
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[4])),
                  SizedBox(width: 16.h),
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[5])),
                ],
              ),
              SizedBox(height: 16.h),
              // Row 4: VIP6 and VIP7
              Row(
                children: [
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[6])),
                  SizedBox(width: 16.h),
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[7])),
                ],
              ),
              SizedBox(height: 16.h),
              // Row 5: VIP8 and VIP9
              Row(
                children: [
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[8])),
                  SizedBox(width: 16.h),
                  Expanded(
                      child: VipCardWidget(vipLevel: controller.vipCards[9])),
                ],
              ),
              SizedBox(height: 16.h),
              // Row 6: VIP10 (Single Card)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250.h,
                    child: VipCardWidget(vipLevel: controller.vipCards[10]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
