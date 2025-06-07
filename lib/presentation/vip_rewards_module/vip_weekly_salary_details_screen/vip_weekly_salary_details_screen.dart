import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_weekly_salary_details_controller.dart';
import './models/vip_level_row_model.dart';

class VipWeeklySalaryDetailsScreen
    extends GetWidget<VipWeeklySalaryDetailsController> {
  VipWeeklySalaryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: CustomVipAppBar(
          title: 'VIP Weekly Salary',
          amount: '₱19800.00',
          leadingIcon: ImageConstant.imgUnion,
          onLeadingPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              _buildTitleSection(),
              SizedBox(height: 24.h),
              _buildInformationCard(),
              SizedBox(height: 16.h),
              _buildRewardDetailsTable(),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleSection() {
    return Row(
      children: [
        Container(
          width: 5.h,
          height: 40.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF85D4,
            borderRadius: BorderRadius.circular(2.h),
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Text(
            'What is \'Weekly Salary\'?',
            style: TextStyleHelper.instance.title22Black.copyWith(height: 1.0),
          ),
        ),
      ],
    );
  }

  Widget _buildInformationCard() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'You can receive the weekly salary corresponding to your current VIP level at the designated time every week.',
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
                      ' Please claim this week\'s rewards within 3 days,otherwise they will be invalid.',
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
                  text: 'Weekly collection time: ',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFFFFC6, height: 1.21),
                ),
                TextSpan(
                  text: 'Saturday 02:06',
                  style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
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
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          _buildRequirementsNote(),
          _buildTableColumnHeaders(),
          _buildTableRows(),
          _buildDecorativeElement(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 39.h,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 52.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle568,
              width: 242.h,
              height: 39.h,
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF0000,
                    offset: Offset(0, 2),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Text(
                'Reward details',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom, height: 0.88),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirementsNote() {
    return Container(
      padding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 8.h),
      child: Text(
        '※Complete the corresponding weekly belting and deposit requirements to getthe weekly bonus',
        style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
      ),
    );
  }

  Widget _buildTableColumnHeaders() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Row(
        children: [
          Container(
            width: 58.h,
            height: 50.h,
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.colorFF4279),
            ),
            child: Center(
              child: Text(
                'VIP level',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom, height: 1.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 101.h,
            height: 50.h,
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.colorFF4279),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: Text(
                  'Weakly Betting Reguirements',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            width: 105.h,
            height: 50.h,
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.colorFF4279),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.h),
                child: Text(
                  'Weekly Deposit\nReguirements',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 50.h,
              child: Center(
                child: Text(
                  'weekly\nSalary',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableRows() {
    return Obx(() {
      return Column(
        children:
            controller.vipLevels.map((level) => _buildTableRow(level)).toList(),
      );
    });
  }

  Widget _buildTableRow(VipLevelRowModel level) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: appTheme.colorFF505B, width: 1.h),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          children: [
            Container(
              width: 58.h,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: level.iconPath?.value ?? '',
                    width: 40.h,
                    height: 40.h,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    level.levelText?.value ?? '',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFFE1E1, height: 1.25),
                  ),
                ],
              ),
            ),
            Container(
              width: 101.h,
              child: Center(
                child: Text(
                  level.bettingRequirement?.value ?? '',
                  style: TextStyleHelper.instance.body14Medium
                      .copyWith(height: 1.21),
                ),
              ),
            ),
            Container(
              width: 105.h,
              child: Center(
                child: Text(
                  level.depositRequirement?.value ?? '',
                  style: TextStyleHelper.instance.body14Medium
                      .copyWith(height: 1.21),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  level.weeklySalary?.value ?? '',
                  style: TextStyleHelper.instance.textStyle9.copyWith(
                      color: (level.weeklySalary?.value == '—')
                          ? Color(0xFF808994)
                          : appTheme.colorFFFFC6,
                      fontSize: (level.weeklySalary?.value == '—')
                          ? 12.0
                          : 14.0, // Modified: Fixed bool to double conversion
                      height: (level.weeklySalary?.value == '—') ? 1.21 : 1.25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDecorativeElement() {
    return Positioned(
      bottom: 0,
      left: 0,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup1224,
        width: 32.h,
        height: 11.h,
      ),
    );
  }
}
