import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_monthly_salary_controller.dart';
import './models/vip_level_item_model.dart';

class VipMonthlySalaryScreen extends GetWidget<VipMonthlySalaryController> {
  const VipMonthlySalaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: CustomVipAppBar(
          title: 'VIP Monthly Salary',
          leadingIcon: ImageConstant.imgUnion,
          showCurrency: true,
          currencyAmount: '₱19800.00',
          currencyIcon: ImageConstant.imgGroup736,
          actionIcon: ImageConstant.img114x16,
          onLeadingPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitleSection(),
            _buildInformationCard(),
            _buildRewardsTable(),
            _buildRewardDetailsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return Container(
      padding: EdgeInsets.fromLTRB(16.h, 24.h, 16.h, 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 5.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF85D4,
              borderRadius: BorderRadius.circular(2.h),
            ),
          ),
          SizedBox(width: 24.h),
          Expanded(
            child: Text(
              'What is \'Monthly Salary \'?',
              style:
                  TextStyleHelper.instance.title22Black.copyWith(height: 1.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInformationCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can receive the monthly salary corresponding to yourcurrent VlP level at the designated times every month.',
            style: TextStyleHelper.instance.body14.copyWith(height: 1.14),
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Collection time limit:',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFFFFC6, height: 1.14),
                ),
                TextSpan(
                  text:
                      ' Please claim this month\'s rewardswithin 3 days, otherwise they will be invalid.',
                  style: TextStyleHelper.instance.body14.copyWith(height: 1.14),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Monthly collection time: ',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFFFFC6, height: 1.14),
                ),
                TextSpan(
                  text: '7th of every month 01:58',
                  style: TextStyleHelper.instance.body14.copyWith(height: 1.14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRewardsTable() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.h, 16.h, 16.h, 0),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          _buildTableNote(),
          Obx(() => Column(
                children: List.generate(
                  controller.vipLevels.length,
                  (index) => _buildTableRow(controller.vipLevels[index], index),
                ),
              )),
        ],
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
          topLeft: Radius.circular(10.h),
          topRight: Radius.circular(10.h),
        ),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Container(
            width: 58.h,
            padding: EdgeInsets.only(right: 8.h),
            decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(color: appTheme.colorFF4279, width: 1.h)),
            ),
            child: Text(
              'VIP Level',
              textAlign: TextAlign.center,
              style:
                  TextStyleHelper.instance.body12SemiBold.copyWith(height: 1.0),
            ),
          ),
          Container(
            width: 101.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(color: appTheme.colorFF4279, width: 1.h)),
            ),
            child: Text(
              'Monthly Betting Requirements',
              textAlign: TextAlign.center,
              style:
                  TextStyleHelper.instance.body12SemiBold.copyWith(height: 1.0),
            ),
          ),
          Container(
            width: 105.h,
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            decoration: BoxDecoration(
              border: Border(
                  right: BorderSide(color: appTheme.colorFF4279, width: 1.h)),
            ),
            child: Text(
              'Monthly Deposit Requirements',
              textAlign: TextAlign.center,
              style:
                  TextStyleHelper.instance.body12SemiBold.copyWith(height: 1.0),
            ),
          ),
          Expanded(
            child: Text(
              'Monthly Salary',
              textAlign: TextAlign.center,
              style:
                  TextStyleHelper.instance.body12SemiBold.copyWith(height: 1.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableNote() {
    return Container(
      padding: EdgeInsets.fromLTRB(12.h, 8.h, 12.h, 8.h),
      decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: appTheme.colorFF505B, width: 1.h)),
      ),
      child: Text(
        '※Complete the corresponding monthly betting and deposit requirements to get the monthly bonus',
        style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
      ),
    );
  }

  Widget _buildTableRow(VipLevelItemModel item, int index) {
    bool isLastItem = index == controller.vipLevels.length - 1;

    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        border: isLastItem
            ? null
            : Border(
                bottom: BorderSide(color: appTheme.colorFF505B, width: 1.h)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 58.h,
            child: Column(
              children: [
                CustomImageView(
                  imagePath: item.iconPath?.value ?? '',
                  height: 40.h,
                  width: 40.h,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 4.h),
                Text(
                  item.level?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFE1E1, height: 1.25),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 101.h,
            child: Text(
              item.bettingRequirement?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
            ),
          ),
          SizedBox(
            width: 105.h,
            child: Text(
              item.depositRequirement?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
            ),
          ),
          Expanded(
            child: Text(
              item.monthlySalary?.value ?? '',
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.textStyle12.copyWith(
                  color: item.isRewardEligible?.value ?? false
                      ? Color(0xFFFFC600)
                      : appTheme.colorFF8089,
                  height: item.isRewardEligible?.value ?? false ? 1.25 : 1.21),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRewardDetailsSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.h, 16.h, 16.h, 16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1224,
                width: 32.h,
                height: 11.h,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle568,
                width: 242.h,
                height: 39.h,
                fit: BoxFit.contain,
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup1224,
                width: 32.h,
                height: 11.h,
                fit: BoxFit.contain,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'Reward Details',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.whiteCustom, height: 0.875, shadows: [
              Shadow(
                offset: Offset(0, 2.h),
                blurRadius: 2.h,
                color: appTheme.blackCustom,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
