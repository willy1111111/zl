import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_promotional_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/jbet88_vip_rewards_dashboard_controller.dart';
import './models/vip_requirement_row_model.dart';
import './widgets/vip_level_item_widget.dart';
import './widgets/vip_requirement_row_widget.dart';

class Jbet88VipRewardsDashboardScreen
    extends GetWidget<Jbet88VipRewardsDashboardController> {
  Jbet88VipRewardsDashboardScreen({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
        child: Column(
          children: [
            _buildVipUpgradeBonusBanner(),
            SizedBox(height: 16.h),
            _buildVipEventDescription(),
            SizedBox(height: 16.h),
            _buildVipLevelRewards(),
            SizedBox(height: 16.h),
            _buildWeeklySalaryCard(),
            SizedBox(height: 16.h),
            _buildMonthlySalaryCard(),
            SizedBox(height: 16.h),
            _buildBirthdayBonusCard(),
            SizedBox(height: 16.h),
            _buildVipRequirementsTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildVipUpgradeBonusBanner() {
    return CustomPromotionCard(
      backgroundImagePath: ImageConstant.img3,
      overlayImagePath: ImageConstant.img74x345,
      gradientColors: [Color(0xFFf8af4d), Color(0xFFbe6c09)],
      borderColor: appTheme.colorFFF9A9,
      height: 70.h,
    );
  }

  Widget _buildVipEventDescription() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383c), Color(0xFF25282d)],
        ),
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
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
                            text: 'JBET88',
                            style: TextStyleHelper.instance.body14Black
                                .copyWith(color: appTheme.colorFFF6D1),
                          ),
                          TextSpan(
                            text: ' Introducing VIP exclusive bonuses',
                            style: TextStyleHelper.instance.body14Black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Event attendees: All VIP Teamss',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                    SizedBox(height: 8.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'How to get VIP upgrade rewards:',
                            style: TextStyleHelper.instance.body12Bold
                                .copyWith(color: appTheme.colorFFF6D1),
                          ),
                          TextSpan(
                            text:
                                ' You can collect it yourself after upgrading to the corresponding VIP level.',
                            style: TextStyleHelper.instance.body12Bold
                                .copyWith(color: appTheme.colorFF8089),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img1WhiteA700,
                height: 16.h,
                width: 16.h,
              ),
              SizedBox(width: 16.h),
              Text(
                'Event Description',
                style: TextStyleHelper.instance.body14Black,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            '1.The VIP level is permanently valid after activation\n2.VIP level promotion requires corresponding valid deposits and valid bets',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.3),
          ),
        ],
      ),
    );
  }

  Widget _buildVipLevelRewards() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Obx(() => Column(
            children: controller.vipLevelItems
                .map((item) => VipLevelItemWidget(vipLevelItem: item))
                .toList(),
          )),
    );
  }

  Widget _buildWeeklySalaryCard() {
    return CustomPromotionCard(
      backgroundImagePath: ImageConstant.img4,
      overlayImagePath: ImageConstant.img5,
      gradientColors: [Color(0xFFaecad6), Color(0xFF367d9b)],
      borderColor: appTheme.colorFFAECA,
      height: 70.h,
      onTap: () => Get.toNamed(AppRoutes.vipWeeklySalaryDetailsScreen),
    );
  }

  Widget _buildMonthlySalaryCard() {
    return CustomPromotionCard(
      backgroundImagePath: ImageConstant.img4,
      overlayImagePath: ImageConstant.img6,
      gradientColors: [Color(0xFFb2bcfa), Color(0xFF6657ff)],
      borderColor: appTheme.colorFFB2BC,
      height: 70.h,
      onTap: () => Get.toNamed(AppRoutes.vipMonthlySalaryDetailsScreen),
    );
  }

  Widget _buildBirthdayBonusCard() {
    return CustomPromotionalCard(
      backgroundImagePath: ImageConstant.img4,
      overlayImagePath: ImageConstant.img74x250,
      characterImagePath: ImageConstant.img896611,
      arrowImagePath: ImageConstant.imgGroup1260,
      gradientColors: [Color(0xFF289efe), Color(0xFF0063fb)],
      characterIconSize: Size(105, 77),
      characterIconOffset: Offset(0, -4),
      overlayIconOffset: Offset(95, -4),
      arrowIconOffset: Offset(16, 24),
    );
  }

  Widget _buildVipRequirementsTable() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            _buildTableHeader(),
            SizedBox(height: 16.h),
            _buildTableHeaderRow(),
            _buildTableContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle568,
          height: 39.h,
          width: 282.h,
        ),
        Text(
          'Upgrade VIP requirements',
          style: TextStyleHelper.instance.title16Bold
              .copyWith(color: appTheme.whiteCustom),
        ),
      ],
    );
  }

  Widget _buildTableHeaderRow() {
    return Container(
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
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Container(
            width: 48.h,
            child: Text(
              'VIP level',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
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
        color: appTheme.colorFF2527,
        border: Border.all(color: appTheme.colorFF1516),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(6.h),
          bottomRight: Radius.circular(6.h),
        ),
      ),
      child: Obx(() => Column(
            children:
                controller.vipRequirementRows.asMap().entries.map((entry) {
              int index = entry.key;
              VipRequirementRowModel item = entry.value;
              return VipRequirementRowWidget(
                vipRequirementRow: item,
                isLastItem: index == controller.vipRequirementRows.length - 1,
              );
            }).toList(),
          )),
    );
  }
}
