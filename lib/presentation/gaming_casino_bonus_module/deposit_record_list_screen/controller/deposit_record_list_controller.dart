import 'package:get/get.dart';
import '../models/deposit_record_list_model.dart';
import '../models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class DepositRecordListController extends GetxController {
  RxInt selectedTabIndex = 0.obs;
  RxList<TransactionItemModel> transactions = <TransactionItemModel>[].obs;
  Rx<DepositRecordListModel> depositRecordListModel =
      DepositRecordListModel().obs;

  @override
  void onInit() {
    super.onInit();
    initializeTransactions();
  }

  void selectTab(int index) {
    selectedTabIndex.value = index;
    // Filter transactions based on selected tab
    filterTransactionsByTab(index);
  }

  void initializeTransactions() {
    transactions.value = [
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        amount: '+₱200.00'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        status: 'Credited'.obs,
        statusColor: Color(0xFF18E014).obs,
      ),
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        amount: '+₱100.00'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        status: 'Cancelled'.obs,
        statusColor: Color(0xFFE014CB).obs,
      ),
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        amount: '+₱300.00'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        status: 'In progress'.obs,
        statusColor: Color(0xFFE07614).obs,
      ),
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        amount: '+₱260.00'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        status: 'Rejected'.obs,
        statusColor: Color(0xFFE01414).obs,
      ),
    ];
  }

  void filterTransactionsByTab(int tabIndex) {
    // Implementation for filtering transactions based on selected time range
    switch (tabIndex) {
      case 0: // Today
        // Filter for today's transactions
        break;
      case 1: // Yesterday
        // Filter for yesterday's transactions
        break;
      case 2: // 7-days
        // Filter for last 7 days transactions
        break;
    }
  }
}
