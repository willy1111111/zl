import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_weekly_rewards_dashboard_controller.dart';
import './widgets/vip_requirements_table_widget.dart';

class VipWeeklyRewardsDashboardScreen
    extends GetWidget<VipWeeklyRewardsDashboardController> {
  VipWeeklyRewardsDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        body: Stack(
          children: [
            Column(
              children: [
                CustomVipAppBar(
                  title: 'Vip',
                  amount: 'R\$1980.00',
                  leadingIcon: ImageConstant.imgStroke,
                  currencyIcon: ImageConstant.imgGroup736,
                  trailingIcon: ImageConstant.img1LightGreenA70002,
                  showStatusBar: true,
                  onLeadingPressed: () => Get.back(),
                  onTrailingPressed: () => controller.onAddFundsPressed(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(16.h),
                    child: Column(
                      children: [
                        _buildPromotionalCards(),
                        _buildWeeklySalaryInfoSection(),
                        _buildBirthdayBonusCard(),
                        _buildSalaryCard(),
                        VipRequirementsTableWidget(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            _buildSuccessNotificationOverlay(),
          ],
        ),
      ),
    );
  }

  Widget _buildPromotionalCards() {
    return Column(
      children: [
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img5,
          gradientColors: [Color(0xFFAECAD6), Color(0xFF367D9B)],
          borderColor: appTheme.colorFFAECA,
          onTap: () => controller.onVipUpgradePressed(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img3,
          overlayImagePath: ImageConstant.img74x345,
          gradientColors: [Color(0xFFF8AF4D), Color(0xFFBE6C09)],
          borderColor: appTheme.colorFFF9A9,
          onTap: () => controller.onWeeklySalaryPressed(),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }

  Widget _buildWeeklySalaryInfoSection() {
    return Container(
      width: 345.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2D31,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWarningMessage(),
          SizedBox(height: 16.h),
          _buildInfoCard(),
        ],
      ),
    );
  }

  Widget _buildWarningMessage() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup1270,
          height: 16.h,
          width: 16.h,
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Text(
            'There are no rewards available for the current level.',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoCard() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1F21,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoHeader(),
          SizedBox(height: 16.h),
          _buildInfoDescription(),
          SizedBox(height: 16.h),
          _buildCollectionTimeInfo(),
          SizedBox(height: 16.h),
          CustomLabelValueText(
            labelText: 'Weekly collection time：',
            valueText: 'Sunday 22:00:00',
            labelColor: appTheme.colorFF85D4,
            valueColor: appTheme.colorFFFAFC,
            fontSize: CustomFontSize.medium,
            fontWeight: FontWeight.bold,
            bottomMargin: 8,
          ),
          CustomLevelDisplay(
            labelText: 'Your level：',
            iconPath: ImageConstant.imgVip,
            valueText: 'V8',
            marginBottom: 8,
          ),
          CustomLabelValueText(
            labelText: 'Weekly Salary：',
            valueText: '₱1999',
            labelColor: appTheme.whiteCustom,
            valueColor: appTheme.colorFFFFC6,
            fontSize: CustomFontSize.medium,
            fontWeight: FontWeight.w900,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoHeader() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup1285,
          height: 36.h,
          width: 36.h,
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'How to get ',
                  style: TextStyleHelper.instance.body14Black,
                ),
                TextSpan(
                  text: 'VIP',
                  style: TextStyleHelper.instance.body14Black
                      .copyWith(color: appTheme.colorFF85D4),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyleHelper.instance.body14Black,
                ),
                TextSpan(
                  text: 'weekly salary',
                  style: TextStyleHelper.instance.body14Black
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can receive the weekly salary corresponding to your current VIP level at the designated time every week.',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
        SizedBox(height: 16.h),
        Text(
          'Collection time limit：Please claim this week\'s rewards within 3 days, otherwise they will be invalid.',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
      ],
    );
  }

  Widget _buildCollectionTimeInfo() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Weekly collection time：',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          TextSpan(
            text: 'Sunday 22:00:00',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFFAFC),
          ),
        ],
      ),
    );
  }

  Widget _buildBirthdayBonusCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: CustomPromotionCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img6,
        gradientColors: [Color(0xFFB2BCFA), Color(0xFF6657FF)],
        borderColor: appTheme.colorFFB2BC,
        onTap: () => controller.onBirthdayBonusPressed(),
      ),
    );
  }

  Widget _buildSalaryCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: CustomPromotionalCard(
        backgroundImagePath: ImageConstant.img4,
        overlayImagePath: ImageConstant.img74x250,
        characterImagePath: ImageConstant.img896611,
        arrowImagePath: ImageConstant.imgGroup1260,
        gradientColors: [Color(0xFF289EFE), Color(0xFF0063FB)],
        characterIconSize: Size(105.h, 77.h),
        characterIconOffset: Offset(0, -8.h),
        overlayIconOffset: Offset(95.h, -4.h),
        arrowIconOffset: Offset(16.h, 24.h),
        onTap: () => controller.onSalaryCardPressed(),
      ),
    );
  }

  Widget _buildSuccessNotificationOverlay() {
    return Obx(() {
      if (!(controller.showSuccessNotification.value ?? false)) {
        return SizedBox.shrink();
      }

      return Container(
        color: appTheme.blackCustom.withAlpha(128),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF8089,
              borderRadius: BorderRadius.circular(8.h),
            ),
            margin: EdgeInsets.symmetric(horizontal: 32.h),
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 64.h),
            child: Text(
              'Received successfully！',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
    });
  }
}
