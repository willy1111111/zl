import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/vip_daily_salary_claimed_controller.dart';

class VipDailySalaryClaimedScreen
    extends GetWidget<VipDailySalaryClaimedController> {
  const VipDailySalaryClaimedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFFF5F5,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildVipDailySalaryCard(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVipDailySalaryCard() {
    return Container(
      width: 345.h,
      height: 213.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2E31,
        border: Border.all(
          color: appTheme.colorFF292F,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          // Background gradient image
          Positioned(
            top: 0,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img370x345,
              height: 70.h,
              width: 345.h,
              fit: BoxFit.cover,
            ),
          ),

          // Info icon
          Positioned(
            top: 25.h,
            right: 32.h,
            child: GestureDetector(
              onTap: () {
                controller.onInfoIconPressed();
              },
              child: CustomImageView(
                imagePath: ImageConstant.img1Gray90003,
                height: 20.h,
                width: 20.h,
              ),
            ),
          ),

          // VIP Daily Salary logo
          Positioned(
            top: 19.h,
            left: 92.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVpDailySalary1,
              height: 32.h,
              width: 204.h,
            ),
          ),

          // VIP badge
          Positioned(
            top: 0,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVpDailySalary21,
              height: 68.h,
              width: 91.h,
            ),
          ),

          // Stats section
          Positioned(
            top: 82.h,
            left: 15.h,
            right: 15.h,
            child: _buildStatsSection(),
          ),

          // Yesterday's salary section
          Positioned(
            bottom: 16.h,
            left: 5.h,
            right: 5.h,
            child: _buildYesterdaySalarySection(),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatsSection() {
    return Obx(() => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total valid bets
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total valid bets today:',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom, height: 1.17),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    controller.vipDailySalaryClaimedModelObj.value
                            .totalValidBets?.value ??
                        '₱100',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6, height: 1.19),
                  ),
                ],
              ),
            ),

            // Estimated salary
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Estimated Salary today:',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom, height: 1.17),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    controller.vipDailySalaryClaimedModelObj.value
                            .estimatedSalary?.value ??
                        '₱2.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6, height: 1.19),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  /// Section Widget
  Widget _buildYesterdaySalarySection() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => Row(
            children: [
              // Coin icon
              CustomImageView(
                imagePath: ImageConstant.img40x51,
                height: 40.h,
                width: 51.h,
              ),

              SizedBox(width: 8.h),

              // Salary info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Salary From Yesterday:',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.21),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      controller.vipDailySalaryClaimedModelObj.value
                              .yesterdaySalary?.value ??
                          '₱4933.70',
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(color: appTheme.colorFFFFC6, height: 1.19),
                    ),
                  ],
                ),
              ),

              // Received status button
              GestureDetector(
                onTap: () {
                  controller.onReceivedButtonPressed();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: (controller.vipDailySalaryClaimedModelObj.value
                                  .isReceived?.value ??
                              false)
                          ? [Color(0xFF4a5058), Color(0xFF3a4045)]
                          : [Color(0xFF363c41), Color(0xFF2b3035)],
                    ),
                    borderRadius: BorderRadius.circular(18.h),
                  ),
                  child: Text(
                    (controller.vipDailySalaryClaimedModelObj.value.isReceived
                                ?.value ??
                            false)
                        ? 'Claimed'
                        : 'Received',
                    style: TextStyleHelper.instance.body14Bold.copyWith(
                        color: (controller.vipDailySalaryClaimedModelObj.value
                                    .isReceived?.value ??
                                false)
                            ? Color(0xFF4ade80)
                            : appTheme.colorFF8089,
                        height: 1.21),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
