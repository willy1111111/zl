import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_weekly_salary_pending_controller.dart';
import './widgets/vip_requirements_table_widget.dart';

class VipWeeklySalaryPendingScreen
    extends GetWidget<VipWeeklySalaryPendingController> {
  const VipWeeklySalaryPendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildVipAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              SizedBox(height: 16.h),
              _buildVipUpgradeCard(),
              SizedBox(height: 16.h),
              _buildVipWeeklyCard(),
              SizedBox(height: 16.h),
              _buildHowToGetSalarySection(),
              SizedBox(height: 16.h),
              _buildChainDecorations(),
              SizedBox(height: 16.h),
              _buildVipMonthlyCard(),
              SizedBox(height: 16.h),
              _buildVipBirthdayCard(),
              SizedBox(height: 16.h),
              VipRequirementsTableWidget(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildVipAppBar() {
    return CustomVipAppBar(
      title: 'Vip',
      amount: '₱19800.00',
      onLeadingPressed: () => Get.back(),
      onTrailingPressed: () => controller.onMenuTapped(),
    );
  }

  Widget _buildVipUpgradeCard() {
    return CustomPromotionCard(
      backgroundImagePath: ImageConstant.img3,
      overlayImagePath: ImageConstant.img74x345,
      gradientColors: [Color(0xFFf8af4d), Color(0xFFbe6c09)],
      borderColor: appTheme.colorFFF9A9,
      onTap: () => controller.onVipUpgradeTapped(),
    );
  }

  Widget _buildVipWeeklyCard() {
    return CustomPromotionCard(
      backgroundImagePath: ImageConstant.img4,
      overlayImagePath: ImageConstant.img5,
      gradientColors: [Color(0xFFaecad6), Color(0xFF367d9b)],
      borderColor: appTheme.colorFFAECA,
      onTap: () => controller.onVipWeeklyTapped(),
    );
  }

  Widget _buildHowToGetSalarySection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2D31,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
      ),
      padding: EdgeInsets.all(16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1F21,
          borderRadius: BorderRadius.circular(8.h),
          border: Border.all(color: appTheme.colorFF292F),
        ),
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader(),
            SizedBox(height: 16.h),
            _buildDescriptionText(),
            SizedBox(height: 16.h),
            _buildCollectionTimeInfo(),
            SizedBox(height: 16.h),
            _buildWeeklyCollectionTime(),
            SizedBox(height: 16.h),
            _buildUserLevelInfo(),
            SizedBox(height: 16.h),
            _buildWeeklySalaryInfo(),
            SizedBox(height: 24.h),
            _buildReceiveAwardSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup1285,
          height: 36.h,
          width: 36.h,
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'How to get ',
                      style: TextStyleHelper.instance.body14Black,
                    ),
                    TextSpan(
                      text: 'VIP',
                      style: TextStyleHelper.instance.body14Black
                          .copyWith(color: appTheme.colorFFF6D1),
                    ),
                    TextSpan(
                      text: ' ',
                      style: TextStyleHelper.instance.body14Black,
                    ),
                    TextSpan(
                      text: 'weekly salary',
                      style: TextStyleHelper.instance.body14Black
                          .copyWith(color: appTheme.colorFFF6D1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSubtract,
          height: 16.h,
          width: 16.h,
        ),
      ],
    );
  }

  Widget _buildDescriptionText() {
    return Text(
      'You can receive the weekly salary corresponding to your current VIP level at the designated time every week.',
      style: TextStyleHelper.instance.body12Bold
          .copyWith(color: appTheme.colorFF8089, height: 1.33),
    );
  }

  Widget _buildCollectionTimeInfo() {
    return CustomLabelValueText(
      labelText: 'Collection time limit：',
      valueText:
          'Please claim this week\'s rewards within 3 days, otherwise they will be invalid.',
      labelColor: appTheme.colorFFF6D1,
      valueColor: appTheme.colorFF8089,
      fontSize: CustomFontSize.small,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildWeeklyCollectionTime() {
    return CustomLabelValueText(
      labelText: 'Weekly collection time：',
      valueText: 'Sunday 22:00:00',
      labelColor: appTheme.colorFFF6D1,
      valueColor: appTheme.colorFFFAFC,
      fontSize: CustomFontSize.medium,
      fontWeight: FontWeight.bold,
    );
  }

  Widget _buildUserLevelInfo() {
    return CustomLevelDisplay(
      labelText: 'Your level：',
      iconPath: ImageConstant.imgIconvip8,
      valueText: 'V8',
    );
  }

  Widget _buildWeeklySalaryInfo() {
    return CustomLabelValueText(
      labelText: 'Weekly Salary：',
      valueText: '₱1999',
      labelColor: appTheme.whiteCustom,
      valueColor: appTheme.colorFFFFC6,
      fontSize: CustomFontSize.medium,
      fontWeight: FontWeight.w900,
    );
  }

  Widget _buildReceiveAwardSection() {
    return Column(
      children: [
        CustomGradientButton(
          text: 'Receive award',
          onTap: () => controller.onReceiveAwardTapped(),
          gradientColors: [Color(0xFFffc61e), Color(0xFFff9f00)],
          textColor: appTheme.whiteCustom,
          borderColor: appTheme.colorFFFFC6,
          fontSize: 14.fSize,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 8.h),
        Text(
          'Expiration countdown',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFF8089),
        ),
        SizedBox(height: 4.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup1263,
              height: 12.h,
              width: 12.h,
            ),
            SizedBox(width: 8.h),
            Obx(() => Text(
                  controller.countdownTime.value ?? '2 days 23：59：59',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                )),
          ],
        ),
      ],
    );
  }

  Widget _buildChainDecorations() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 12.h,
            width: 32.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1224,
            height: 12.h,
            width: 32.h,
          ),
        ],
      ),
    );
  }

  Widget _buildVipMonthlyCard() {
    return CustomPromotionCard(
      backgroundImagePath: ImageConstant.img4,
      overlayImagePath: ImageConstant.img6,
      gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
      borderColor: appTheme.colorFFB2BC,
      onTap: () => controller.onVipMonthlyTapped(),
    );
  }

  Widget _buildVipBirthdayCard() {
    return CustomPromotionalCard(
      backgroundImagePath: ImageConstant.img4,
      overlayImagePath: ImageConstant.img74x250,
      characterImagePath: ImageConstant.img896611,
      arrowImagePath: ImageConstant.imgGroup1260,
      gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
      characterIconSize: Size(105.h, 77.h),
      characterIconOffset: Offset(0, -4.h),
      overlayIconOffset: Offset(110.h, -4.h),
      onTap: () => controller.onVipBirthdayTapped(),
    );
  }
}
