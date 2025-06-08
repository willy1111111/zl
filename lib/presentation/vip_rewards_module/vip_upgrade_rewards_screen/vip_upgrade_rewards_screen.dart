import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import '../../../../widgets/custom_vip_card.dart';
import './controller/vip_upgrade_rewards_controller.dart';
import './widgets/vip_bonus_item_widget.dart';
import './widgets/vip_level_row_widget.dart';

class VipUpgradeRewardsScreen extends GetWidget<VipUpgradeRewardsController> {
  const VipUpgradeRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomVipAppBar(
          title: 'Vip',
          showCurrency: true,
          currencyAmount: '₱19800.00',
          actionIcon: ImageConstant.img114x16,
          onLeadingPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildVipUpgradeBonusBanner(),
            SizedBox(height: 16.h),
            _buildEventInformationCard(),
            SizedBox(height: 16.h),
            _buildReceivedSuccessfullyCard(),
            SizedBox(height: 16.h),
            _buildVipWeeklySalaryCard(),
            SizedBox(height: 16.h),
            _buildVipMonthlySalaryCard(),
            SizedBox(height: 16.h),
            _buildVipBirthdayBonusCard(),
            SizedBox(height: 16.h),
            _buildVipRequirementsTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildVipUpgradeBonusBanner() {
    return CustomVipCard(
      // gradientType: CustomVipCardGradient.orange, // Modified: Removed undefined enum constant
      backgroundImage: ImageConstant.img3,
      overlayImage: ImageConstant.img74x345,
      height: 70.h,
      onTap: () => controller.onVipUpgradeTap(),
    );
  }

  Widget _buildEventInformationCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383C), Color(0xFF25282D)],
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
                height: 40.h,
                width: 40.h,
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
                            style: TextStyleHelper.instance.body14Black
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h),
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
                style: TextStyleHelper.instance.body14Black
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Text(
            '1.The VIP level is permanently valid after activation\n2.VIP level promotion requires corresponding valid deposits and valid bets',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.33),
          ),
        ],
      ),
    );
  }

  Widget _buildReceivedSuccessfullyCard() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF8089,
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(12.h),
            width: double.infinity,
            child: Text(
              'Received successfully！',
              style: TextStyleHelper.instance.title18Bold,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16.h),
          Obx(() => Column(
                children: controller.vipBonusItems.value
                    .map((item) => Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: VipBonusItemWidget(bonusItem: item),
                        ))
                    .toList(),
              )),
        ],
      ),
    );
  }

  Widget _buildVipWeeklySalaryCard() {
    return CustomVipCard(
      // gradientType: CustomVipCardGradient.blue, // Modified: Removed undefined enum constant
      backgroundImage: ImageConstant.img4,
      overlayImage: ImageConstant.img5,
      height: 70.h,
      onTap: () => Get.toNamed(AppRoutes.vipWeeklySalaryScreen),
    );
  }

  Widget _buildVipMonthlySalaryCard() {
    return CustomVipCard(
      // gradientType: CustomVipCardGradient.purple, // Modified: Removed undefined enum constant
      backgroundImage: ImageConstant.img4,
      overlayImage: ImageConstant.img22,
      height: 70.h,
      onTap: () => Get.toNamed(AppRoutes.vipMonthlySalaryScreen),
    );
  }

  Widget _buildVipBirthdayBonusCard() {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF289EFE), Color(0xFF0063FB)],
        ),
        border: Border.all(color: appTheme.colorFF289E),
        borderRadius: BorderRadius.circular(8.h),
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
            left: 4.h,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img896611,
              height: 73.h,
              width: 105.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 110.h,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img74x250,
              height: 74.h,
              width: 250.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 24.h,
            right: 32.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1254,
              height: 32.h,
              width: 24.h,
            ),
          ),
        ],
      ),
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
          border: Border.all(color: appTheme.colorFF1516),
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle568,
                  height: 40.h,
                  width: 282.h,
                ),
                Text(
                  'Upgrade VIP requirements',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            _buildTableHeader(),
            Obx(() => Column(
                  children: controller.vipLevelRows.value
                      .map((row) => VipLevelRowWidget(levelRow: row))
                      .toList(),
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
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6.h),
          topRight: Radius.circular(6.h),
        ),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
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
                  imagePath: ImageConstant.img21x27,
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
}
