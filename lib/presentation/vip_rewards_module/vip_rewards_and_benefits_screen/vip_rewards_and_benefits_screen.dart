import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_rewards_and_benefits_controller.dart';
import './widgets/vip_requirement_item_widget.dart';

class VipRewardsAndBenefitsScreen
    extends GetWidget<VipRewardsAndBenefitsController> {
  const VipRewardsAndBenefitsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomVipAppBar(
          title: 'Vip',
          amount: '₱19800.00',
          onLeadingPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPromotionalBanners(),
              SizedBox(height: 16.h),
              _buildVipWeeklySalarySection(),
              SizedBox(height: 16.h),
              _buildChainDecorations(),
              SizedBox(height: 16.h),
              _buildAdditionalPromotions(),
              SizedBox(height: 16.h),
              _buildVipRequirementsTable(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPromotionalBanners() {
    return Column(
      children: [
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img3,
          overlayImagePath: ImageConstant.img74x345,
          gradientColors: [Color(0xFFf8af4d), Color(0xFFbe6c09)],
          borderColor: appTheme.colorFFF9A9,
          onTap: () => controller.onUpgradeBonusTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img5,
          gradientColors: [Color(0xFFaecad6), Color(0xFF367d9b)],
          borderColor: appTheme.colorFFAECA,
          onTap: () => controller.onWeeklySalaryTap(),
        ),
      ],
    );
  }

  Widget _buildVipWeeklySalarySection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2D31,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF1F21,
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(color: appTheme.colorFF292F),
            ),
            padding: EdgeInsets.all(16.h),
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
                          SizedBox(height: 8.h),
                          Text(
                            'You can receive the weekly salary corresponding to your current VIP level at the designated time every week.',
                            style: TextStyleHelper.instance.body12Bold.copyWith(
                                color: appTheme.colorFF8089, height: 1.3),
                          ),
                          SizedBox(height: 16.h),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Collection time limit：',
                                  style: TextStyleHelper.instance.body12Bold
                                      .copyWith(color: appTheme.colorFFF6D1),
                                ),
                                TextSpan(
                                  text:
                                      'Please claim this week\'s rewards within 3 days, otherwise they will be invalid.',
                                  style: TextStyleHelper.instance.body12Bold
                                      .copyWith(color: appTheme.colorFF8089),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          CustomLabelValueText(
                            labelText: 'Weekly collection time：',
                            valueText: 'Sunday 22:00:00',
                            labelColor: appTheme.colorFFF6D1,
                            valueColor: appTheme.colorFFFAFC,
                            fontSize: CustomFontSize.medium,
                            fontWeight: FontWeight.bold,
                            bottomMargin: 16,
                          ),
                          CustomLevelDisplay(
                            labelText: 'Your level：',
                            iconPath: ImageConstant.imgIconvip0,
                            valueText: 'V0',
                            marginBottom: 8,
                          ),
                          CustomLabelValueText(
                            labelText: 'Weekly Salary：',
                            valueText: '₱0',
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
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1270,
                height: 12.h,
                width: 12.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'There are no rewards available for the current level.',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
        ],
      ),
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

  Widget _buildAdditionalPromotions() {
    return Column(
      children: [
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img6,
          gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
          borderColor: appTheme.colorFFB2BC,
          onTap: () => controller.onMonthlySalaryTap(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionalCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img74x250,
          characterImagePath: ImageConstant.img896611,
          arrowImagePath: ImageConstant.imgGroup1260,
          gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
          characterIconSize: Size(105.h, 70.h),
          characterIconOffset: Offset(0, 0),
          overlayIconOffset: Offset(95.h, 0),
          arrowIconOffset: Offset(16.h, 24.h),
          onTap: () => controller.onBirthdayBonusTap(),
        ),
      ],
    );
  }

  Widget _buildVipRequirementsTable() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      padding: EdgeInsets.all(8.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(4.h),
        child: Column(
          children: [
            _buildTableHeader(),
            SizedBox(height: 0),
            Obx(() => Column(
                  children: controller.vipRequirements.value.map((requirement) {
                    return VipRequirementItemWidget(
                      requirement: requirement,
                    );
                  }).toList(),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6.h),
          topRight: Radius.circular(6.h),
        ),
      ),
      padding: EdgeInsets.all(12.h),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                left: 32.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle568,
                  height: 40.h,
                  width: 282.h,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text(
                    'Upgrade VIP requirements',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom, shadows: [
                      Shadow(
                        color: appTheme.blackCustom,
                        offset: Offset(0, 2.h),
                        blurRadius: 2.h,
                      ),
                    ]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'VIP level',
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(color: appTheme.whiteCustom),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.h,
                        height: 40.h,
                        color: Color(0xFF315a007f),
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
                                  .copyWith(
                                      color: appTheme.whiteCustom, height: 1.2),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.h,
                        height: 40.h,
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
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(
                                      color: appTheme.whiteCustom, height: 1.2),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.h,
                        height: 40.h,
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
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(
                                      color: appTheme.whiteCustom, height: 1.2),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.h,
                        height: 40.h,
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
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(
                                      color: appTheme.whiteCustom, height: 1.2),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
