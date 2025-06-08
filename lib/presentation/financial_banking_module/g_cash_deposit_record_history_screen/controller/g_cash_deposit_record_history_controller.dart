import 'package:get/get.dart';
import '../models/g_cash_deposit_record_history_model.dart';
import '../models/transaction_item_model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordHistoryController extends GetxController {
  Rx<GCashDepositRecordHistoryModel> gCashDepositRecordHistoryModel =
      GCashDepositRecordHistoryModel().obs;
  RxList<TransactionItemModel> transactions = <TransactionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeTransactions();
  }

  void _initializeTransactions() {
    transactions.value = [
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱200.00'.obs,
        status: 'Success'.obs,
        statusColor: Color(0xFF85D420).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱100.00'.obs,
        status: 'Reviewed'.obs,
        statusColor: Color(0xFF00C1FF).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱300.00'.obs,
        status: 'Processing'.obs,
        statusColor: Color(0xFFFF00F4).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱260.00'.obs,
        status: 'Fail'.obs,
        statusColor: Color(0xFFF65252).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱260.00'.obs,
        status: 'Closed'.obs,
        statusColor: Color(0xFFFFC600).obs,
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

  void onTransactionTap(TransactionItemModel transaction) {
    // Handle transaction item tap
  }

  void onPreviousPressed() {
    // Handle previous page navigation
  }

  void onNextPressed() {
    // Handle next page navigation
  }
}
