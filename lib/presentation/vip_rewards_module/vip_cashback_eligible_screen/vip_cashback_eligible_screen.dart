import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_cashback_eligible_controller.dart';
import './widgets/vip_level_row_widget.dart';

class VipCashbackEligibleScreen
    extends GetWidget<VipCashbackEligibleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomVipAppBar(
        title: 'Vip',
        amount: '₱19800.00',
        onLeadingPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16.h),
            _buildWeeklyCashbackBanner(),
            SizedBox(height: 16.h),
            _buildUpcomingCashbackSection(),
            SizedBox(height: 16.h),
            _buildTermsAndRulesSection(),
            SizedBox(height: 16.h),
            _buildVipUpgradeBonusCard(),
            SizedBox(height: 16.h),
            _buildVipWeeklySalaryCard(),
            SizedBox(height: 16.h),
            _buildVipMonthlySalaryCard(),
            SizedBox(height: 16.h),
            _buildVipBirthdayBonusCard(),
            SizedBox(height: 16.h),
            _buildVipRequirementsTable(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  Widget _buildWeeklyCashbackBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img370x345,
        overlayImagePath: ImageConstant.img7,
        gradientColors: [Color(0xFF4df8ce), Color(0xFFbe6c09)],
        borderColor: appTheme.colorFFF9A9,
        height: 70.h,
      ),
    );
  }

  Widget _buildUpcomingCashbackSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2D31,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCashbackHeader(),
          SizedBox(height: 16.h),
          _buildExpectedWinSection(),
          SizedBox(height: 16.h),
          _buildYouWillWinSection(),
          SizedBox(height: 16.h),
          _buildLevelAndStatistics(),
          SizedBox(height: 16.h),
          _buildClaimButton(),
          SizedBox(height: 12.h),
          _buildSettlementTime(),
        ],
      ),
    );
  }

  Widget _buildCashbackHeader() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup12010,
          height: 44.h,
          width: 44.h,
        ),
        SizedBox(width: 12.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Upcoming ',
                style: TextStyleHelper.instance.title16Black,
              ),
              TextSpan(
                text: 'cashback amount',
                style: TextStyleHelper.instance.title16Black
                    .copyWith(color: appTheme.colorFFF6D1),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExpectedWinSection() {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle556,
            width: double.infinity,
            height: 60.h,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomLevelDisplay(
                          labelText: 'Expected to win',
                          iconPath: ImageConstant
                              .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                          valueText: '453',
                          iconSize: 16.h,
                          spacing: 8.h,
                          marginBottom: 0,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          'Next update amount：2023-01-02 01:00',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFF00A3),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup120051,
                    height: 64.h,
                    width: 64.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYouWillWinSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF0C5D,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle620,
            width: double.infinity,
            height: 80.h,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'You Will Win ',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                          Text(
                            '??? ',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(color: appTheme.colorFFFFEB),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant
                                .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                            height: 16.h,
                            width: 16.h,
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'CASHBACK This Week!',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant
                          .img003c43379e03cb1b39665abbcbdfb918f34e18e8977fcl4agd1,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant
                          .img0867343e1b2a94d23faebd743b153cfab88dc3f999116r6tuknfw12001,
                      height: 64.h,
                      width: 64.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLevelAndStatistics() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF033B,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.h),
          bottomRight: Radius.circular(8.h),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF0233,
          border: Border.all(color: appTheme.colorFF0762),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.h),
            bottomRight: Radius.circular(8.h),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomLevelDisplay(
                  labelText: 'Your level：',
                  iconPath: ImageConstant.imgV4,
                  valueText: 'V4',
                  iconSize: 28.h,
                  marginBottom: 0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '13% Cashback',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                    Text(
                      '(Max:20%)',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Statistics Time： 2023-11-01 00:00 ~ 2023-11-07 23:59',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF00A3),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClaimButton() {
    return CustomGradientButton(
      text: 'Claim now',
      gradientColors: [Color(0xFFffc61e), Color(0xFFff9f00)],
      borderColor: appTheme.colorFFFFC6,
      textColor: appTheme.whiteCustom,
      onTap: () => controller.onClaimButtonPressed(),
    );
  }

  Widget _buildSettlementTime() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup12003,
              height: 12.h,
              width: 12.h,
            ),
            SizedBox(width: 8.h),
            Text(
              'Claim settlement time',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ],
        ),
        SizedBox(height: 4.h),
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            '2023-11-13 06:00 - 2023-11-15 23:59',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
        ),
      ],
    );
  }

  Widget _buildTermsAndRulesSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383c), Color(0xFF25282d)],
        ),
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                height: 12.h,
                width: 16.h,
              ),
              SizedBox(width: 12.h),
              Text(
                'Terms and rules',
                style: TextStyleHelper.instance.body14Black,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          RichText(
            text: TextSpan(
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.5),
              children: [
                TextSpan(
                  text:
                      '1. The weekly cashback statistical time is from Monday 00:00 to Sunday 23:59\n2. ',
                ),
                TextSpan(
                  text: 'Cashback collection time:',
                  style: TextStyleHelper.instance.textStyle9
                      .copyWith(color: appTheme.colorFF51A0),
                ),
                TextSpan(
                  text:
                      ' next Monday 00:00 to Wednesday 23:59, it will expire if not collected\n3. The real money lost during the statistical period multiplied by the return percentage corresponding to the VIP level is the cashback you can receive\n4. If you do not place a bet within the statistical time, or your total winnings are greater than your losses, you will not receive cashback\n5. ',
                ),
                TextSpan(
                  text:
                      'Maximum cashback reward limit per person per week: ₱10,000',
                  style: TextStyleHelper.instance.textStyle9
                      .copyWith(color: appTheme.colorFF51A0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVipUpgradeBonusCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img3,
        overlayImagePath: ImageConstant.img74x345,
        gradientColors: [Color(0xFFf8af4d), Color(0xFFbe6c09)],
        borderColor: appTheme.colorFFF9A9,
        height: 70.h,
      ),
    );
  }

  Widget _buildVipWeeklySalaryCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img5,
        gradientColors: [Color(0xFFaecad6), Color(0xFF367d9b)],
        borderColor: appTheme.colorFFAECA,
        height: 70.h,
      ),
    );
  }

  Widget _buildVipMonthlySalaryCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img6,
        gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
        borderColor: appTheme.colorFFB2BC,
        height: 70.h,
      ),
    );
  }

  Widget _buildVipBirthdayBonusCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionalCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img74x250,
        characterImagePath: ImageConstant.img896611,
        arrowImagePath: ImageConstant.imgGroup1260,
        gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
        characterIconSize: Size(80.h, 80.h),
        characterIconOffset: Offset(4.h, -4.h),
      ),
    );
  }

  Widget _buildVipRequirementsTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          SizedBox(height: 12.h),
          _buildTableContent(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle568,
            width: double.infinity,
            height: 40.h,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              'Upgrade VIP requirements',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableContent() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        border: Border.all(color: appTheme.colorFF1516),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Column(
        children: [
          _buildTableHeaderRow(),
          ...List.generate(
            controller.vipLevels.length,
            (index) => VipLevelRowWidget(
              vipLevelModel: controller.vipLevels[index],
              isAlternate: index % 2 == 0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeaderRow() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6.h),
          topRight: Radius.circular(6.h),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'VIP level',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup11886,
                  height: 36.h,
                  width: 20.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Deposit amount',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img8411641,
                  height: 20.h,
                  width: 16.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Bet amount',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img,
                  height: 28.h,
                  width: 20.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Upgrade bonus',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBn01,
                  height: 28.h,
                  width: 20.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'weekly cashback',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
