import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/ticket_record_model.dart';

class TicketRecordsController extends GetxController {
  Rx<String>? selectedFilter = 'All'.obs;
  Rx<String>? selectedDateRange = '2023-05-11~2023-05-14'.obs;
  Rx<String>? totalAmount = '10.00'.obs;
  RxList<TicketRecordModel> ticketRecords = <TicketRecordModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTicketRecords();
  }

  void loadTicketRecords() {
    ticketRecords.value = [
      TicketRecordModel(
        id: '1'.obs,
        title: 'Free spins, a chance to win 1000P treasure. extra ……'.obs,
        bonus: 'No winning ticket'.obs,
        time: '2023/12/22 09:00:03'.obs,
        iconPath: ImageConstant.imgFrame14099.obs,
        backgroundImagePath: ImageConstant.imgSubtractGray90005.obs,
        rightImagePath: ImageConstant.imgGroup14397.obs,
        iconBackgroundColor: Color(0xFF2D4440).obs,
        iconShadowColor: Color(0xFF006551).obs,
        bonusTextColor: Color(0xFFFFC600).obs,
      ),
      TicketRecordModel(
        id: '2'.obs,
        title: 'APP download bonus - ₱38'.obs,
        bonus: '₱1'.obs,
        time: '2023/12/22 09:00:03'.obs,
        iconPath: ImageConstant.imgFrame1409938x38.obs,
        backgroundImagePath: ImageConstant.imgSubtractGray90008.obs,
        rightImagePath: ImageConstant.imgGroup14397.obs,
        iconBackgroundColor: Color(0xFF361C63).obs,
        iconShadowColor: Color(0xFFF900FF3D).obs,
        bonusTextColor: Color(0xFFFFC600).obs,
      ),
      TicketRecordModel(
        id: '3'.obs,
        title: '₱8 Cash Voucher'.obs,
        bonus: '₱19,999.80'.obs,
        time: '2023/12/22 09:00:03'.obs,
        iconPath: ImageConstant.imgCash1.obs,
        backgroundImagePath: ImageConstant.imgSubtractGray90007.obs,
        rightImagePath: ImageConstant.imgGroup14397.obs,
        iconBackgroundColor: Color(0xFF1E2849).obs,
        iconShadowColor: Color(0xFF014971).obs,
        bonusTextColor: Color(0xFFFFC600).obs,
        iconWidth: 53.h.obs,
        iconHeight: 44.h.obs,
      ),
      TicketRecordModel(
        id: '4'.obs,
        title: 'Daily Treasure Hunt-1'.obs,
        bonus: '₱19,999.80'.obs,
        time: '2023/12/22 09:00:03'.obs,
        iconPath: ImageConstant.imgFrame14099.obs,
        backgroundImagePath: ImageConstant.imgSubtractGray90006.obs,
        rightImagePath: ImageConstant.imgGroup14397.obs,
        iconBackgroundColor: Color(0xFF443631).obs,
        iconShadowColor: Color(0xFF634D00).obs,
        bonusTextColor: Color(0xFFFFC600).obs,
      ),
    ];
  }

  void onAllFilterTap() {
    // Handle filter dropdown functionality
    // Can implement dropdown menu logic here
  }

  void onDatePickerTap() {
    // Handle date picker functionality
    // Can implement date range picker logic here
  }

  void updateFilter(String filter) {
    selectedFilter?.value = filter;
    // Filter logic can be implemented here
  }

  void updateDateRange(String dateRange) {
    selectedDateRange?.value = dateRange;
    // Date range filtering logic can be implemented here
  }
}
