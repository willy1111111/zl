import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_weekly_salary_submitted_controller.dart';
import './widgets/vip_requirement_item_widget.dart';

class VipWeeklySalarySubmittedScreen
    extends GetWidget<VipWeeklySalarySubmittedController> {
  VipWeeklySalarySubmittedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onTrailingPressed: () => controller.handleNotificationTap(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Column(
                    children: [
                      _buildPromotionCardsSection(),
                      _buildVipInformationSection(),
                      _buildVipRequirementsSection(),
                      _buildNavigationArrows(),
                      SizedBox(height: 80.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _buildSuccessModal(),
          _buildCloseButton(),
        ],
      ),
    );
  }

  Widget _buildPromotionCardsSection() {
    return Column(
      children: [
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img3,
          overlayImagePath: ImageConstant.img74x345,
          gradientColors: [Color(0xFFf8af4d), Color(0xFFbe6c09)],
          borderColor: appTheme.colorFFF9A9,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          onTap: () => controller.handleUpgradeBonusTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img5,
          gradientColors: [Color(0xFFaecad6), Color(0xFF367d9b)],
          borderColor: appTheme.colorFFAECA,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          onTap: () => controller.handleWeeklySalaryTap(),
        ),
      ],
    );
  }

  Widget _buildVipInformationSection() {
    return Container(
      margin: EdgeInsets.all(16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2D31,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1270,
                height: 16.h,
                width: 16.h,
                margin: EdgeInsets.only(right: 16.h, top: 4.h),
              ),
              Expanded(
                child: Text(
                  'There are no rewards available for the current level.',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF1F21,
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(color: appTheme.colorFF292F),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1285,
                      height: 36.h,
                      width: 36.h,
                      margin: EdgeInsets.only(right: 12.h),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyleHelper.instance.body14Black,
                              children: [
                                TextSpan(
                                  text: 'How to get ',
                                  style: TextStyleHelper.instance.textStyle9
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                                TextSpan(
                                  text: 'VIP',
                                  style: TextStyleHelper.instance.textStyle9
                                      .copyWith(color: appTheme.colorFF85D4),
                                ),
                                TextSpan(
                                  text: ' ',
                                  style: TextStyleHelper.instance.textStyle9
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                                TextSpan(
                                  text: 'weekly salary',
                                  style: TextStyleHelper.instance.textStyle9
                                      .copyWith(color: appTheme.colorFF85D4),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                Text(
                  'You can receive the weekly salary corresponding to your current VIP level at the designated time every week.',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.33),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Collection time limit：Please claim this week\'s rewards within 3 days, otherwise they will be invalid.',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.33),
                ),
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
                  labelText: 'Your level：        ',
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
          ),
        ],
      ),
    );
  }

  Widget _buildVipRequirementsSection() {
    return Column(
      children: [
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img6,
          gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
          borderColor: appTheme.colorFFB2BC,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          onTap: () => controller.handleMonthlySalaryTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionalCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img74x250,
          characterImagePath: ImageConstant.img896611,
          arrowImagePath: ImageConstant.imgGroup1260,
          gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
          characterIconOffset: Offset(0, -8),
          overlayIconOffset: Offset(95, -4),
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          onTap: () => controller.handleBirthdayBonusTap(),
        ),
        SizedBox(height: 16.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          padding: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(10.h),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Upgrade VIP task requirements',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: Column(
                  children: [
                    _buildTableHeader(),
                    Obx(() => Column(
                          children: controller.vipRequirements.value
                              .map((requirement) => VipRequirementItemWidget(
                                    requirement: requirement,
                                  ))
                              .toList(),
                        )),
                    _buildBirthdayBonusRow(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: appTheme.colorFF282F)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'VIP level',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              'Deposit amount',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              'Bet amount',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              'Upgrade bonus',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              'weekly salary',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              'monthly salary',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBirthdayBonusRow() {
    return Container(
      padding: EdgeInsets.all(8.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Birthday bonus',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Expanded(
            child: Text(
              '300',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              '800',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              '1000',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              '1200',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              '200',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationArrows() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => controller.handlePreviousPage(),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1224,
              height: 12.h,
              width: 32.h,
            ),
          ),
          GestureDetector(
            onTap: () => controller.handleNextPage(),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1224,
              height: 12.h,
              width: 32.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessModal() {
    return Obx(() => Visibility(
          visible: controller.isModalVisible.value,
          child: Container(
            color: appTheme.blackCustom.withAlpha(128),
            child: Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 32.h),
                padding: EdgeInsets.all(24.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF8089,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: Text(
                  'Submitted successfully!\nIssued immediately after approval',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.5),
                ),
              ),
            ),
          ),
        ));
  }

  Widget _buildCloseButton() {
    return Positioned(
      bottom: 48.h,
      left: 0,
      right: 0,
      child: Center(
        child: GestureDetector(
          onTap: () => controller.closeModal(),
          child: Container(
            height: 36.h,
            width: 36.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              border: Border.all(color: appTheme.colorFF7E87),
              borderRadius: BorderRadius.circular(18.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.color888888,
                  blurRadius: 4.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA70011x11,
                height: 12.h,
                width: 12.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
