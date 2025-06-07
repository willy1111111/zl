import 'package:get/get.dart';
import '../models/qualified_bonus_model.dart';
import '../models/bonus_table_row_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/app_export.dart';

class QualifiedBonusController extends GetxController {
  Rx<QualifiedBonusModel> qualifiedBonusModel = QualifiedBonusModel().obs;
  RxList<BonusTableRowModel> bonusData = <BonusTableRowModel>[].obs;
  RxString totalBonusAmount = '₱ 333,333.00'.obs;
  RxString totalUsersText = 'total users:10'.obs;
  RxInt selectedTabIndex = 4.obs;

  @override
  void onInit() {
    super.onInit();
    qualifiedBonusModel.value = QualifiedBonusModel();
    initializeBonusData();
  }

  void initializeBonusData() {
    bonusData.value = [
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        teamId: '898****33'.obs,
        bonusAmount: '+₱ 9.80'.obs,
        backgroundColor: Color(0xFF25272B).obs,
      ),
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        teamId: '898****33'.obs,
        bonusAmount: '+₱ 9.80'.obs,
        backgroundColor: Color(0xFF1E2024).obs,
      ),
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        teamId: '898****33'.obs,
        bonusAmount: '+₱ 9.80'.obs,
        backgroundColor: Color(0xFF25272B).obs,
      ),
      BonusTableRowModel(
        date: '2023-09-09 19:00'.obs,
        teamId: '898****33'.obs,
        bonusAmount: '+₱ 9.80'.obs,
        backgroundColor: Color(0xFF1E2024).obs,
      ),
    ];
  }

  void onTabChanged(int index) {
    selectedTabIndex.value = index;
  }

  void onDropdownChanged(String value) {
    // Handle dropdown change logic
  }

  void onDateRangeChanged(String dateRange) {
    // Handle date range change logic
  }

  @override
  void onClose() {
    super.onClose();
  }
}
