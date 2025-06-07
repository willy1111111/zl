import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/income_analytics_dashboard_model.dart';
import '../models/income_category_model.dart';

class IncomeAnalyticsDashboardController extends GetxController {
  Rx<IncomeAnalyticsDashboardModel> incomeAnalyticsDashboardModel =
      IncomeAnalyticsDashboardModel().obs;

  RxList<IncomeCategoryModel> incomeCategories = <IncomeCategoryModel>[].obs;
  RxBool isCalendarVisible = false.obs;
  RxString selectedDateRange = '08/21/2024 - 08/27/2024'.obs;
  RxString selectedFilter = 'All'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeIncomeCategories();
    incomeAnalyticsDashboardModel.value = IncomeAnalyticsDashboardModel();
  }

  void initializeIncomeCategories() {
    incomeCategories.value = [
      IncomeCategoryModel(
        iconPath: ImageConstant.imgFrameLightBlueA400.obs,
        backgroundColor: Color(0xFF00D1FF).obs,
        title: 'Registration Bonus:'.obs,
        amount: '₱ 92.00'.obs,
        subtitle: 'Registers: 3'.obs,
        showSubtitle: true.obs,
      ),
      IncomeCategoryModel(
        iconPath: ImageConstant.imgFramePurpleA200.obs,
        backgroundColor: Color(0xFF2E1CFF).obs,
        title: 'Deposit Bonus:'.obs,
        amount: '₱ 92.00'.obs,
        subtitle: 'Depositors: 3'.obs,
        showSubtitle: true.obs,
      ),
      IncomeCategoryModel(
        iconPath: ImageConstant.imgFramePink300.obs,
        backgroundColor: Color(0xFFFF00F4).obs,
        title: 'Qualified Bonus：'.obs,
        amount: '₱ 1292.00'.obs,
        subtitle: 'Qualified Users: 3'.obs,
        showSubtitle: true.obs,
      ),
      IncomeCategoryModel(
        iconPath: ImageConstant.imgFrameOrange700.obs,
        backgroundColor: Color(0xFFFF6007).obs,
        title: 'Betting Rebates Bonus:'.obs,
        amount: '₱ 1292.00'.obs,
        subtitle: ''.obs,
        showSubtitle: false.obs,
      ),
      IncomeCategoryModel(
        iconPath: ImageConstant.imgFrameLightGreenA70001.obs,
        backgroundColor: Color(0xFF85D420).obs,
        title: 'Achievement Rewards:'.obs,
        amount: '₱ 333,333.00'.obs,
        subtitle: ''.obs,
        showSubtitle: false.obs,
      ),
    ];
  }

  void selectFilter(String filter) {
    selectedFilter.value = filter;
    // Add logic to filter data based on selection
  }

  void showCalendarModal() {
    isCalendarVisible.value = true;
  }

  void hideCalendarModal() {
    isCalendarVisible.value = false;
  }

  void updateDateRange(String startDate, String endDate) {
    selectedDateRange.value = '$startDate - $endDate';
    // Add logic to update data based on date range
  }
}
