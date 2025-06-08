import '../models/withdrawal_transaction_model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class WithdrawalHistoryController extends GetxController {
  RxList<WithdrawalTransactionModel> transactions =
      <WithdrawalTransactionModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTransactions();
  }

  void loadTransactions() {
    transactions.value = [
      WithdrawalTransactionModel(
        dateTime: '2023-09-09 19:00:00'.obs,
        amount: '₱500'.obs,
        status: 'Processing'.obs,
        statusColor: Color(0xFFFF00F4).obs,
        showInfoIcon: false.obs,
      ),
      WithdrawalTransactionModel(
        dateTime: '2023-09-09 19:00:00'.obs,
        amount: '₱500'.obs,
        status: 'Success'.obs,
        statusColor: Color(0xFF85D420).obs,
        showInfoIcon: false.obs,
      ),
      WithdrawalTransactionModel(
        dateTime: '2023-09-09 19:00:00'.obs,
        amount: '₱500'.obs,
        status: 'Fail'.obs,
        statusColor: Color(0xFFF65252).obs,
        showInfoIcon: true.obs,
      ),
      WithdrawalTransactionModel(
        dateTime: '2023-09-09 19:00:00'.obs,
        amount: '₱500'.obs,
        status: 'Fail'.obs,
        statusColor: Color(0xFFF65252).obs,
        showInfoIcon: true.obs,
      ),
      WithdrawalTransactionModel(
        dateTime: '2023-09-09 19:00:00'.obs,
        amount: '₱500'.obs,
        status: 'Fail'.obs,
        statusColor: Color(0xFFF65252).obs,
        showInfoIcon: true.obs,
      ),
    ];
  }

  void onInfoIconTapped(WithdrawalTransactionModel transaction) {
    Get.snackbar(
      'Transaction Info',
      'Details for transaction: ${transaction.status?.value}',
      backgroundColor: appTheme.colorFF2C2F,
      colorText: appTheme.whiteCustom,
    );
  }
}
