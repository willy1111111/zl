import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_rewards_dashboard_controller.dart';
import './widgets/vip_requirement_item_widget.dart';

class VipRewardsDashboardScreen
    extends GetWidget<VipRewardsDashboardController> {
  const VipRewardsDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Column(
          children: [
            _buildVipAppBar(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  children: [
                    _buildPromotionalCards(),
                    SizedBox(height: 16.h),
                    _buildVipWeeklySalaryDetails(),
                    SizedBox(height: 16.h),
                    _buildVipRequirementsTable(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVipAppBar() {
    return CustomVipAppBar(
      title: 'Vip',
      amount: '₱19800.00',
      onLeadingPressed: () => Get.back(),
    );
  }

  Widget _buildPromotionalCards() {
    return Column(
      children: [
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img3,
          overlayImagePath: ImageConstant.img74x345,
          gradientColors: [Color(0xFFf8af4d), Color(0xFFbe6c09)],
          borderColor: appTheme.colorFFF9A9,
          height: 70.h,
          onTap: () => controller.onVipUpgradeCardTap(),
        ),
        SizedBox(height: 16.h),
        Container(
          height: 70.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFaecad6), Color(0xFF367d9b)],
            ),
            borderRadius: BorderRadius.circular(8.h),
            border: Border.all(color: appTheme.colorFFAECA),
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img4,
                height: 70.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: -4.h,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img5,
                  height: 74.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 24.h,
                right: 16.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup1260,
                  height: 32.h,
                  width: 24.h,
                ),
              ),
              Positioned(
                bottom: -18.h,
                left: 24.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup1224,
                  height: 12.h,
                  width: 32.h,
                ),
              ),
              Positioned(
                bottom: -18.h,
                right: 24.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup1224,
                  height: 12.h,
                  width: 32.h,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img6,
          gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
          borderColor: appTheme.colorFFB2BC,
          height: 70.h,
          onTap: () => controller.onMonthlySalaryCardTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionalCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img74x250,
          characterImagePath: ImageConstant.img896611,
          arrowImagePath: ImageConstant.imgGroup1260,
          gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
          characterIconSize: Size(105.h, 77.h),
          characterIconOffset: Offset(0, -4.h),
          overlayIconOffset: Offset(95.h, -4.h),
          onTap: () => controller.onBirthdayBonusCardTap(),
        ),
      ],
    );
  }

  Widget _buildVipWeeklySalaryDetails() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2D31,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF1F21,
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(color: appTheme.colorFF292F),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1285,
                      height: 36.h,
                      width: 36.h,
                    ),
                    SizedBox(width: 12.h),
                    Expanded(
                      child: Text(
                        'How to get VIP weekly salary',
                        style: TextStyleHelper.instance.body14Black,
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
                  labelColor: appTheme.colorFFF6D1,
                  valueColor: appTheme.colorFFFAFC,
                  fontSize: CustomFontSize.medium,
                  fontWeight: FontWeight.bold,
                  bottomMargin: 16.h,
                ),
                CustomLevelDisplay(
                  labelText: 'Your level：',
                  iconPath: ImageConstant.imgIconvip8,
                  valueText: 'V8',
                  marginBottom: 8.h,
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
          SizedBox(height: 16.h),
          Container(
            height: 36.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF4B55,
              border: Border.all(color: appTheme.colorFF8089),
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [appTheme.whiteCustom, Color(0xFFebfdee)],
                ).createShader(bounds),
                child: Text(
                  'Receive award',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1270,
                height: 12.h,
                width: 12.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'Time has not come yet',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVipRequirementsTable() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          Container(
            height: 40.h,
            margin: EdgeInsets.only(bottom: 16.h),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle568,
                  height: 40.h,
                  width: 282.h,
                ),
                Positioned(
                  top: 12.h,
                  left: 64.h,
                  child: Text(
                    'Upgrade VIP requirements',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom, shadows: [
                      Shadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 2.h),
                        blurRadius: 2,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(6.h),
              border: Border.all(color: appTheme.colorFF1516),
            ),
            child: Column(
              children: [
                _buildTableHeader(),
                Obx(() => Column(
                      children: List.generate(
                        controller.vipRequirements.length,
                        (index) => VipRequirementItemWidget(
                          vipRequirement: controller.vipRequirements[index],
                          index: index,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6.h),
          topRight: Radius.circular(6.h),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 64.h,
            child: Text(
              'VIP level',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body12Black,
            ),
          ),
          Expanded(
            child: Row(
              children: [
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
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1.h,
                  height: 60.h,
                  color: Color(0xFF315a007f),
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
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1.h,
                  height: 60.h,
                  color: Color(0xFF315a007f),
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
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1.h,
                  height: 60.h,
                  color: Color(0xFF315a007f),
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
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
