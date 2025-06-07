import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/bonus_dashboard_model.dart';

class BonusDashboardController extends GetxController {
  Rx<BonusDashboardModel> bonusDashboardModel = BonusDashboardModel().obs;

  RxString? selectedDateRange = '08-21  -  08-27'.obs;
  RxString? selectedDepositType = 'Deposit Rebate'.obs;
  RxString? totalDepositRebate = '₱ 333,333.00'.obs;
  RxInt selectedTabIndex = 4.obs;
  RxInt selectedBottomNavIndex = 2.obs;
  RxBool hasNoData = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadBonusData();
  }

  void loadBonusData() {
    // Initialize with default data
    bonusDashboardModel.value = BonusDashboardModel(
      dateRange: selectedDateRange?.value,
      depositType: selectedDepositType?.value,
      totalAmount: totalDepositRebate?.value,
      hasData: hasNoData.value,
    );
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;

    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.achievementBonusScreen);
        break;
      case 1:
        Get.toNamed(AppRoutes.achievementBonusScreen);
        break;
      case 2:
        Get.toNamed(AppRoutes.achievementBonusScreen);
        break;
      case 3:
        Get.toNamed(AppRoutes.achievementBonusScreen);
        break;
      case 4:
        // Current screen - bonus
        break;
      case 5:
        Get.toNamed(AppRoutes.achievementBonusScreen);
        break;
    }
  }

  void onBottomNavChanged(int index) {
    selectedBottomNavIndex.value = index;

    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.gamingHomeScreen);
        break;
      case 1:
        Get.toNamed(AppRoutes.depositBonusHistoryScreen);
        break;
      case 2:
        Get.toNamed(AppRoutes.qualifiedBonusScreen);
        break;
      case 3:
        Get.toNamed(AppRoutes.registrationBonusScreen);
        break;
      case 4:
        Get.toNamed(AppRoutes.casinoGamingHubScreen);
        break;
    }
  }

  void onDepositRebateDropdownTap() {
    // Handle dropdown selection
    Get.bottomSheet(
      Container(
        height: 200.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.h),
            topRight: Radius.circular(16.h),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16.h),
              width: 40.h,
              height: 4.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF8089,
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Deposit Rebate',
                      style: TextStyleHelper.instance.textStyle21
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    onTap: () {
                      selectedDepositType?.value = 'Deposit Rebate';
                      Get.back();
                    },
                  ),
                  ListTile(
                    title: Text(
                      'Betting Bonus',
                      style: TextStyleHelper.instance.textStyle21
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    onTap: () {
                      selectedDepositType?.value = 'Betting Bonus';
                      Get.back();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onDateRangeTap() {
    // Handle date range picker
    Get.dialog(
      AlertDialog(
        backgroundColor: appTheme.colorFF2528,
        title: Text(
          'Select Date Range',
          style: TextStyleHelper.instance.textStyle21
              .copyWith(color: appTheme.whiteCustom),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                '08-21  -  08-27',
                style: TextStyleHelper.instance.textStyle21
                    .copyWith(color: appTheme.whiteCustom),
              ),
              onTap: () {
                selectedDateRange?.value = '08-21  -  08-27';
                Get.back();
              },
            ),
            ListTile(
              title: Text(
                '08-14  -  08-20',
                style: TextStyleHelper.instance.textStyle21
                    .copyWith(color: appTheme.whiteCustom),
              ),
              onTap: () {
                selectedDateRange?.value = '08-14  -  08-20';
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }

  void refreshData() {
    hasNoData.value = true;
    loadBonusData();
    update();
  }
}
