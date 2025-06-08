import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/deposit_record_time_filter_model.dart';
import '../models/transaction_item_model.dart';
import '../../../core/app_export.dart';

class DepositRecordTimeFilterController extends GetxController {
  Rx<DepositRecordTimeFilterModel> depositRecordTimeFilterModel =
      DepositRecordTimeFilterModel().obs;

  RxInt selectedTimeFilter = 0.obs;
  RxString selectedDateRange = '2023-05-11~2023-05-14'.obs;
  RxList<TransactionItemModel> transactions = <TransactionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    depositRecordTimeFilterModel.value = DepositRecordTimeFilterModel();
    loadTransactions();
  }

  void loadTransactions() {
    transactions.value = [
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱200.00'.obs,
        status: 'Credited'.obs,
        statusColor: Color(0xFF18E014).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱100.00'.obs,
        status: 'Cancelled'.obs,
        statusColor: Color(0xFFE014CB).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱300.00'.obs,
        status: 'In progress'.obs,
        statusColor: Color(0xFFE07614).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱260.00'.obs,
        status: 'Rejected'.obs,
        statusColor: Color(0xFFE01414).obs,
      ),
    ];
  }

  void selectTimeFilter(int index) {
    selectedTimeFilter.value = index;
    updateDateRangeBasedOnFilter(index);
  }

  void updateDateRangeBasedOnFilter(int filterIndex) {
    switch (filterIndex) {
      case 0: // Today
        selectedDateRange.value = DateTime.now().toString().substring(0, 10);
        break;
      case 1: // Yesterday
        DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
        selectedDateRange.value = yesterday.toString().substring(0, 10);
        break;
      case 2: // 7-days
        DateTime endDate = DateTime.now();
        DateTime startDate = endDate.subtract(Duration(days: 6));
        selectedDateRange.value =
            '${startDate.toString().substring(0, 10)}~${endDate.toString().substring(0, 10)}';
        break;
    }
  }

  void onFilterPressed(int index) {
    // Handle filter dropdown actions
    print('Filter $index pressed');
  }

  void openDatePicker() async {
    DateTimeRange? pickedRange = await showDateRangePicker(
      context: Get.context!,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      initialDateRange: DateTimeRange(
        start: DateTime.now().subtract(Duration(days: 7)),
        end: DateTime.now(),
      ),
    );

    if (pickedRange != null) {
      selectedDateRange.value =
          '${pickedRange.start.toString().substring(0, 10)}~${pickedRange.end.toString().substring(0, 10)}';
    }
  }
}
