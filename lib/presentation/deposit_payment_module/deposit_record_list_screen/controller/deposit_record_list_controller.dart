import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/deposit_record_list_model.dart';
import '../models/transaction_item_model.dart';
import '../../../core/app_export.dart';

class DepositRecordListController extends GetxController {
  Rx<DepositRecordListModel> depositRecordListModel =
      DepositRecordListModel().obs;
  RxInt selectedChipIndex = 0.obs;
  RxList<TransactionItemModel> transactions = <TransactionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    depositRecordListModel.value = DepositRecordListModel();
    _initializeTransactions();
  }

  void _initializeTransactions() {
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

  void onChipSelected(int index) {
    selectedChipIndex.value = index;
    _filterTransactionsByChip(index);
  }

  void _filterTransactionsByChip(int chipIndex) {
    // Implement filtering logic based on chip selection
    switch (chipIndex) {
      case 0: // All
        _initializeTransactions();
        break;
      case 1: // Reviewed
        transactions.value = transactions
            .where((transaction) => transaction.status?.value == 'Credited')
            .toList();
        break;
      case 2: // Success
        transactions.value = transactions
            .where((transaction) => transaction.status?.value == 'Credited')
            .toList();
        break;
      case 3: // Processing
        transactions.value = transactions
            .where((transaction) => transaction.status?.value == 'In progress')
            .toList();
        break;
      case 4: // Closed
        transactions.value = transactions
            .where((transaction) => transaction.status?.value == 'Cancelled')
            .toList();
        break;
      case 5: // Fail
        transactions.value = transactions
            .where((transaction) => transaction.status?.value == 'Rejected')
            .toList();
        break;
    }
  }

  void onFilterPressed(int index) {
    // Handle filter dropdown actions
    switch (index) {
      case 0: // Order
        print('Order filter pressed');
        break;
      case 1: // Way
        print('Way filter pressed');
        break;
      case 2: // Today
        print('Today filter pressed');
        break;
    }
  }

  void onTransactionTapped(TransactionItemModel transaction) {
    // Handle transaction item tap
    print('Transaction tapped: ${transaction.method?.value}');
  }
}
