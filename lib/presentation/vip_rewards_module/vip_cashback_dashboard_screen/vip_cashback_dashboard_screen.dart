import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_cashback_dashboard_controller.dart';
import './widgets/vip_level_row_widget.dart';

class VipCashbackDashboardScreen
    extends GetWidget<VipCashbackDashboardController> {
  VipCashbackDashboardScreen({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8.h),
            _buildWeeklyCashbackCard(),
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

  Widget _buildWeeklyCashbackCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img370x345,
        overlayImagePath: ImageConstant.img7,
        gradientColors: [Color(0xFF4DF8CE), Color(0xFFBE6C09)],
        borderColor: appTheme.colorFFF9A9,
        height: 70.h,
        onTap: () => controller.onWeeklyCashbackTap(),
      ),
    );
  }

  Widget _buildUpcomingCashbackSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2D31,
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(color: appTheme.colorFF292F),
        ),
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                        text: 'Upcoming',
                        style: TextStyleHelper.instance.title16Black,
                      ),
                      TextSpan(
                        text: ' cashback amount',
                        style: TextStyleHelper.instance.title16Black
                            .copyWith(color: appTheme.colorFFF6D1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            _buildExpectedWinSection(),
            SizedBox(height: 16.h),
            _buildYouWillWinSection(),
            SizedBox(height: 16.h),
            _buildLevelStatisticsSection(),
            SizedBox(height: 16.h),
            _buildClaimButton(),
            SizedBox(height: 12.h),
            _buildClaimSettlementTime(),
          ],
        ),
      ),
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
            height: 60.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Expected to win',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(width: 32.h),
                      Text(
                        '453',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.colorFFFFEB),
                      ),
                      SizedBox(width: 8.h),
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
                    'Next update amount：2023-01-02 01:00',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF00A3),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -8.h,
            right: 20.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup120051,
              height: 73.h,
              width: 65.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYouWillWinSection() {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF0C5D,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle620,
            height: 60.h,
            width: 276.h,
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'You Will Win',
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.whiteCustom, shadows: [
                          Shadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 1),
                            blurRadius: 1,
                          ),
                        ]),
                      ),
                      SizedBox(width: 32.h),
                      Text(
                        '???',
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.colorFFFFEB, shadows: [
                          Shadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 1),
                            blurRadius: 1,
                          ),
                        ]),
                      ),
                      SizedBox(width: 8.h),
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
                        .copyWith(color: appTheme.whiteCustom, shadows: [
                      Shadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 1),
                        blurRadius: 1,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 51.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img003c43379e03cb1b39665abbcbdfb918f34e18e8977fcl4agd1,
              height: 51.h,
              width: 22.h,
            ),
          ),
          Positioned(
            top: -30.h,
            right: 7.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img0867343e1b2a94d23faebd743b153cfab88dc3f999116r6tuknfw12001,
              height: 66.h,
              width: 67.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLevelStatisticsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF033B,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.h),
          bottomRight: Radius.circular(8.h),
        ),
      ),
      padding: EdgeInsets.all(12.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF0233,
          border: Border.all(color: appTheme.colorFF0762),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.h),
            bottomRight: Radius.circular(8.h),
          ),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomLevelDisplay(
                  labelText: 'Your level：',
                  iconPath: ImageConstant.imgV4,
                  valueText: 'V4',
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
            Text(
              'Statistics Time： 2023-11-01 00:00 ~ 2023-11-07 23:59',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF00A3),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClaimButton() {
    return Container(
      width: double.infinity,
      height: 36.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF4B55,
        border: Border.all(color: appTheme.colorFF8089),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Material(
        color: appTheme.transparentCustom,
        child: InkWell(
          onTap: () => controller.onClaimNowTap(),
          borderRadius: BorderRadius.circular(8.h),
          child: Center(
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [appTheme.whiteCustom, Color(0xFFEBFDEE)],
              ).createShader(bounds),
              child: Text(
                'Claim now',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClaimSettlementTime() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVectorRedA700,
          height: 12.h,
          width: 12.h,
        ),
        SizedBox(width: 8.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Claim settlement time',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFE802),
              ),
              SizedBox(height: 2.h),
              Text(
                '2023-11-13 06:00 - 2023-11-15 23:59',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFE802),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTermsAndRulesSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF36383C), Color(0xFF25282D)],
          ),
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(color: appTheme.colorFF292F),
        ),
        padding: EdgeInsets.all(12.h),
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
                style:
                    TextStyleHelper.instance.body12Bold.copyWith(height: 1.2),
                children: [
                  TextSpan(
                    text:
                        '1. The weekly cashback statistical time is from Monday 00:00 to Sunday 23:59\n2. ',
                    style: TextStyleHelper.instance.textStyle9
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  TextSpan(
                    text: 'Cashback collection time:',
                    style: TextStyleHelper.instance.textStyle9
                        .copyWith(color: appTheme.colorFF51A0),
                  ),
                  TextSpan(
                    text:
                        ' next Monday 00:00 to Wednesday 23:59, it will expire if not collected\n3. The real money lost during the statistical period multiplied by the return percentage corresponding to the VIP level is the cashback you can receive\n4. If you do not place a bet within the statistical time, or your total winnings are greater than your losses, you will not receive cashback\n5. ',
                    style: TextStyleHelper.instance.textStyle9
                        .copyWith(color: appTheme.colorFF8089),
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
      ),
    );
  }

  Widget _buildVipUpgradeBonusCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img3,
        overlayImagePath: ImageConstant.img74x345,
        gradientColors: [Color(0xFFF8AF4D), Color(0xFFBE6C09)],
        borderColor: appTheme.colorFFF9A9,
        height: 70.h,
        onTap: () => controller.onVipUpgradeBonusTap(),
      ),
    );
  }

  Widget _buildVipWeeklySalaryCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img5,
        gradientColors: [Color(0xFFAECAD6), Color(0xFF367D9B)],
        borderColor: appTheme.colorFFAECA,
        height: 70.h,
        onTap: () => controller.onVipWeeklySalaryTap(),
      ),
    );
  }

  Widget _buildVipMonthlySalaryCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img6,
        gradientColors: [Color(0xFFB2BCFA), Color(0xFF6657FF)],
        borderColor: appTheme.colorFFB2BC,
        height: 70.h,
        onTap: () => controller.onVipMonthlySalaryTap(),
      ),
    );
  }

  Widget _buildVipBirthdayBonusCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomPromotionalCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img74x250,
        characterImagePath: ImageConstant.img896611,
        arrowImagePath: ImageConstant.imgGroup1260,
        gradientColors: [Color(0xFF289EFE), Color(0xFF0063FB)],
        characterIconSize: Size(77.h, 105.h),
        characterIconOffset: Offset(1.h, 4.h),
        overlayIconOffset: Offset(0, -4.h),
        arrowIconOffset: Offset(32.h, 26.h),
        onTap: () => controller.onVipBirthdayBonusTap(),
      ),
    );
  }

  Widget _buildVipRequirementsTable() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(12.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle568,
                    height: 39.h,
                    width: 282.h,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    'Upgrade VIP requirements',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom, shadows: [
                      Shadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 2),
                        blurRadius: 2,
                      ),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.h),
                  _buildTableHeader(),
                  _buildTableContent(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
        border: Border(
          bottom: BorderSide(color: appTheme.color7F315A),
        ),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              'VIP level',
              style: TextStyleHelper.instance.body12Black,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
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
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
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
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
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
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
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
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                  textAlign: TextAlign.center,
                ),
              ],
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
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8.h),
          bottomRight: Radius.circular(8.h),
        ),
      ),
      child: Obx(() => ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.vipLevels.length,
            itemBuilder: (context, index) {
              return VipLevelRowWidget(
                vipLevelItem: controller.vipLevels[index],
                isEvenRow: index % 2 == 0,
              );
            },
          )),
    );
  }
}
