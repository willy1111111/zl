import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/income_dashboard_model.dart';
import '../models/income_item_model.dart';

class IncomeDashboardController extends GetxController {
  Rx<IncomeDashboardModel> incomeDashboardModelObj = IncomeDashboardModel().obs;

  RxList<IncomeItemModel> incomeItems = <IncomeItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeIncomeItems();
  }

  void _initializeIncomeItems() {
    incomeItems.value = [
      IncomeItemModel(
        iconPath: ImageConstant.imgFrameLightBlueA400.obs,
        iconBackgroundColor: Color(0xFF00D1FF).obs,
        title: 'Registration Bonus:'.obs,
        subtitle: 'Registers: 3'.obs,
        amount: '₱ 92.00'.obs,
        showArrow: true.obs,
        separatorWidth: 47.0.obs,
        separatorLeftMargin: 232.0.obs,
      ),
      IncomeItemModel(
        iconPath: ImageConstant.imgFramePurpleA200.obs,
        iconBackgroundColor: Color(0xFF2E1CFF).obs,
        title: 'Deposit Bonus:'.obs,
        subtitle: 'Depositors: 3'.obs,
        amount: '₱ 92.00'.obs,
        showArrow: true.obs,
        separatorWidth: 63.0.obs,
        separatorLeftMargin: 208.0.obs,
      ),
      IncomeItemModel(
        iconPath: ImageConstant.imgFramePink300.obs,
        iconBackgroundColor: Color(0xFFFF00F4).obs,
        title: 'Qualified Bonus：'.obs,
        subtitle: 'Qualified Users: 3'.obs,
        amount: '₱ 1292.00'.obs,
        showArrow: true.obs,
        separatorWidth: 16.0.obs,
        separatorLeftMargin: 234.0.obs,
      ),
      IncomeItemModel(
        iconPath: ImageConstant.imgFrameOrange700.obs,
        iconBackgroundColor: Color(0xFFFF6007).obs,
        title: 'Betting Rebates Bonus:'.obs,
        subtitle: null,
        amount: '₱ 1292.00'.obs,
        showArrow: false.obs,
        separatorWidth: 99.0.obs,
        separatorLeftMargin: 261.0.obs,
      ),
      IncomeItemModel(
        iconPath: ImageConstant.imgFrameLightGreenA70001.obs,
        iconBackgroundColor: Color(0xFF85D420).obs,
        title: 'Achievement Rewards:'.obs,
        subtitle: null,
        amount: '₱ 333,333.00'.obs,
        showArrow: false.obs,
        separatorWidth: 69.0.obs,
        separatorLeftMargin: 291.0.obs,
      ),
    ];
  }

  void onFilterButtonPressed(String filterType) {
    // Handle filter button press
    print('Filter pressed: $filterType');
  }

  void onDateRangePressed() {
    // Handle date range selection
    print('Date range pressed');
  }
}
