import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/vip_daily_salary_dashboard_controller.dart';

class VipDailySalaryDashboardScreen
    extends GetWidget<VipDailySalaryDashboardController> {
  const VipDailySalaryDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFFF5F5,
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildVipSalaryCard(),
          ],
        ),
      ),
    );
  }

  /// VIP Daily Salary main card widget
  Widget _buildVipSalaryCard() {
    return Obx(() => Container(
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
              // Background decorative image
              Positioned(
                top: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img170x345,
                  width: 345.h,
                  height: 70.h,
                  fit: BoxFit.cover,
                ),
              ),

              // Info icon
              Positioned(
                top: 25.h,
                right: 12.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img1Gray900,
                  width: 20.h,
                  height: 20.h,
                ),
              ),

              // VIP Daily Salary header image
              Positioned(
                top: 19.h,
                left: 92.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVpDailySalary1,
                  width: 204.h,
                  height: 32.h,
                ),
              ),

              // VIP logo/icon
              Positioned(
                top: 0,
                left: 1.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVpDailySalary21,
                  width: 91.h,
                  height: 68.h,
                ),
              ),

              // Today's valid bets section
              Positioned(
                top: 82.h,
                left: 15.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total valid bets today:',
                      style: TextStyleHelper.instance.body12BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      controller.vipDailySalaryDashboardModel.value
                              .totalValidBetsToday?.value ??
                          '₱100',
                      style: TextStyleHelper.instance.title16BoldArial,
                    ),
                  ],
                ),
              ),

              // Today's estimated salary section
              Positioned(
                top: 82.h,
                left: 183.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimated Salary today:',
                      style: TextStyleHelper.instance.body12BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      controller.vipDailySalaryDashboardModel.value
                              .estimatedSalaryToday?.value ??
                          '₱2.00',
                      style: TextStyleHelper.instance.title16BoldArial,
                    ),
                  ],
                ),
              ),

              // Yesterday's salary section
              Positioned(
                top: 129.h,
                left: 5.h,
                child: Container(
                  width: 335.h,
                  height: 68.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF1E20,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 8.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img40x51,
                        width: 51.h,
                        height: 40.h,
                      ),
                      SizedBox(width: 12.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Salary From Yesterday:',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                          SizedBox(height: 1.h),
                          Text(
                            controller.vipDailySalaryDashboardModel.value
                                    .salaryFromYesterday?.value ??
                                '₱0',
                            style: TextStyleHelper.instance.title16BoldArial,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
