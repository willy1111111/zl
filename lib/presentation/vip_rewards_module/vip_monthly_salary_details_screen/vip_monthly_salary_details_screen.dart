import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_monthly_salary_details_controller.dart';
import './models/vip_level_item_model.dart';

class VipMonthlySalaryDetailsScreen
    extends GetWidget<VipMonthlySalaryDetailsController> {
  const VipMonthlySalaryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomVipAppBar(
        title: 'VIP Monthly Salary',
        amount: '₱19800.00',
        leadingIcon: ImageConstant.imgUnion,
        onLeadingPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitleSection(),
            _buildInformationCard(),
            _buildRewardDetailsTable(),
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
          SizedBox(height: 12.h),
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

  Widget _buildRewardDetailsTable() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.h, 16.h, 16.h, 16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          _buildDisclaimer(),
          _buildTableColumnHeaders(),
          _buildTableRows(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 39.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.h)),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle568,
            height: 39.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              'Reward details',
              style: TextStyleHelper.instance.title16Bold
                  .copyWith(color: appTheme.whiteCustom, shadows: [
                Shadow(
                  color: appTheme.blackCustom,
                  offset: Offset(0, 2.h),
                  blurRadius: 2.h,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDisclaimer() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.colorFF505B,
            width: 1.h,
          ),
        ),
      ),
      child: Text(
        '※Complete the corresponding monthly betting and deposit reguirements to get the monthly bonus',
        style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
      ),
    );
  }

  Widget _buildTableColumnHeaders() {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(color: appTheme.colorFF4279),
        borderRadius: BorderRadius.vertical(top: Radius.circular(5.h)),
      ),
      child: Row(
        children: [
          _buildHeaderCell('VIP level', 58.h),
          _buildHeaderCell('Monthly Betting\nReguirements', 101.h),
          _buildHeaderCell('Monthly Deposit\nReguirements', 105.h),
          _buildHeaderCell('Monthly\nSalary', null),
        ],
      ),
    );
  }

  Widget _buildHeaderCell(String text, double? width) {
    return Container(
      width: width,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: appTheme.colorFF4279,
            width: width != null ? 1.h : 0,
          ),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyleHelper.instance.body12SemiBold.copyWith(height: 1.0),
        ),
      ),
    );
  }

  Widget _buildTableRows() {
    return Obx(() {
      return Column(
        children: controller.vipLevels.asMap().entries.map((entry) {
          int index = entry.key;
          VipLevelItemModel level = entry.value;
          bool isLast = index == controller.vipLevels.length - 1;

          return Container(
            height: 60.h,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: isLast
                      ? appTheme.transparentCustom
                      : appTheme.colorFF505B,
                  width: 1.h,
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 58.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: level.iconPath?.value ?? '',
                        height: 40.h,
                        width: 40.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        level.levelText?.value ?? '',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.colorFFE1E1),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 101.h,
                  child: Center(
                    child: Text(
                      level.monthlyBetting?.value ?? '',
                      style: TextStyleHelper.instance.body14Medium,
                    ),
                  ),
                ),
                Container(
                  width: 105.h,
                  child: Center(
                    child: Text(
                      level.monthlyDeposit?.value ?? '',
                      style: TextStyleHelper.instance.body14Medium,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      level.monthlySalary?.value ?? '',
                      style: TextStyleHelper.instance.textStyle9.copyWith(
                          color: (level.monthlySalary?.value ?? '') == '—'
                              ? Color(0xFF808994)
                              : appTheme
                                  .colorFFFFC6), // Modified: Removed invalid fontSize parameter with String value
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      );
    });
  }
}
