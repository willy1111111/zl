import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_label_value_text.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import '../../../../widgets/custom_vip_card.dart';
import '../../../../widgets/custom_vip_level_display.dart';
import './controller/vip_weekly_salary_controller.dart';
import './widgets/vip_table_row_widget.dart';

class VipWeeklySalaryScreen extends GetWidget<VipWeeklySalaryController> {
  VipWeeklySalaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                CustomVipAppBar(
                  title: 'Vip',
                  showCurrency: true,
                  currencyAmount: 'R\$1980.00',
                  actionIcon: ImageConstant.img1,
                  showStatusBar: true,
                  onLeadingPressed: () => Get.back(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildVipCards(),
                        _buildVipInfoSection(),
                        _buildAdditionalCards(),
                        _buildUpgradeTable(),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Obx(() {
              return controller.showSuccessDialog.value
                  ? _buildSuccessDialog()
                  : SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildVipCards() {
    return Column(
      children: [
        GestureDetector(
          onTap: () => controller.onUpgradeBonusCardTap(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 9.h),
            child: CustomVipCard(
              gradientType: CustomVipCardGradient
                  .orange, // Modified: Changed from 'primary' to 'orange'
              backgroundImage: ImageConstant.img3,
              overlayImage: ImageConstant.img74x345,
              arrowImage: ImageConstant.imgGroup1254,
              height: 70.h,
              borderColor: appTheme.colorFFF9A9,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => controller.onWeeklySalaryCardTap(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 4.h),
            child: CustomVipCard(
              gradientType: CustomVipCardGradient.lightBlue,
              backgroundImage: ImageConstant.img4,
              overlayImage: ImageConstant.img5,
              arrowImage: ImageConstant.imgGroup1254,
              height: 70.h,
              borderColor: appTheme.colorFFAECA,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildVipInfoSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2D31,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F, width: 1.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1270,
                height: 14.h,
                width: 14.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'There are no rewards available for the current level.',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.all(10.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF1F21,
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(color: appTheme.colorFF292F, width: 1.h),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1285,
                      height: 37.h,
                      width: 37.h,
                    ),
                    SizedBox(width: 12.h),
                    Expanded(
                      child: Text(
                        'How to get VIP weekly salary',
                        style: TextStyleHelper.instance.body14Black
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
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
                  fontSize: 14.fSize,
                  bottomMargin: 8.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomVipLevelDisplay(
                        vipLevel: 'V8',
                        vipIconPath: ImageConstant.imgVip,
                        labelText: 'Your level：',
                        labelColor: appTheme.whiteCustom,
                        levelColor: appTheme.colorFFFFC6,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                CustomLabelValueText(
                  labelText: 'Weekly Salary：',
                  valueText: '₱1999',
                  labelColor: appTheme.whiteCustom,
                  valueColor: appTheme.colorFFFFC6,
                  fontSize: 14.fSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAdditionalCards() {
    return Column(
      children: [
        GestureDetector(
          onTap: () => controller.onMonthlySalaryCardTap(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 20.h),
            child: CustomVipCard(
              gradientType: CustomVipCardGradient
                  .purple, // Modified: Changed from 'secondary' to 'purple'
              backgroundImage: ImageConstant.img4,
              overlayImage: ImageConstant.img22,
              arrowImage: ImageConstant.imgGroup1254,
              height: 70.h,
              borderColor: appTheme.colorFFB2BC,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => controller.onBirthdayBonusCardTap(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
            child: Stack(
              children: [
                Container(
                  width: 345.h,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.h),
                    border: Border.all(color: appTheme.colorFF289E, width: 1.h),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF289EFE), Color(0xFF0063FB)],
                    ),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.img4,
                    height: 70.h,
                    width: 345.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: -4.h,
                  left: 95.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img74x250,
                    height: 74.h,
                    width: 250.h,
                  ),
                ),
                Positioned(
                  top: -8.h,
                  left: 1.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img896611,
                    height: 77.h,
                    width: 105.h,
                  ),
                ),
                Positioned(
                  top: 23.h,
                  right: 37.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1254,
                    height: 24.h,
                    width: 32.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUpgradeTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40.h, bottom: 16.h),
            child: Text(
              'Upgrade VIP task requirements',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    _buildTableHeader(),
                    Container(
                      height: 1.h,
                      color: appTheme.colorFF282F,
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                    ),
                    _buildVipLevelIcons(),
                    Container(
                      height: 1.h,
                      color: appTheme.colorFF282F,
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                    ),
                    ...controller.tableRows
                        .map((row) => VipTableRowWidget(tableRow: row))
                        .toList(),
                  ],
                ),
                Positioned(
                  bottom: 181.h,
                  left: 26.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1224,
                    height: 32.h,
                    width: 11.h,
                  ),
                ),
                Positioned(
                  bottom: 181.h,
                  right: 37.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup1224,
                    height: 32.h,
                    width: 11.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            'VIP level',
            style: TextStyleHelper.instance.body14Bold,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            'Deposit amount',
            style: TextStyleHelper.instance.body14Bold,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            'Bet amount',
            style: TextStyleHelper.instance.body14Bold,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            'Upgrade bonus',
            style: TextStyleHelper.instance.body14Bold,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            'weekly salary',
            style: TextStyleHelper.instance.body14Bold,
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            'monthly salary',
            style: TextStyleHelper.instance.body14Bold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildVipLevelIcons() {
    return Row(
      children: [
        Expanded(flex: 1, child: SizedBox()),
        ...List.generate(5, (index) {
          return Expanded(
            flex: 1,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img684411655,
                  height: 14.h,
                  width: 16.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  index == 4 ? 'Lv.' : 'Lv.${index + 1}',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          );
        }),
      ],
    );
  }

  Widget _buildSuccessDialog() {
    return Container(
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.h),
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 63.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF8089,
            borderRadius: BorderRadius.circular(8.h),
          ),
          child: Text(
            'Received successfully！',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.whiteCustom),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
