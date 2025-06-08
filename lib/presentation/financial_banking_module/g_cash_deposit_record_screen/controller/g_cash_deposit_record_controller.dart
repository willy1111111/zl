import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/g_cash_deposit_record_model.dart';
import '../models/filter_button_model.dart';
import '../models/transaction_item_model.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordController extends GetxController {
  Rx<GCashDepositRecordModel> gCashDepositRecordModel =
      GCashDepositRecordModel().obs;

  RxList<FilterButtonModel> filterButtons = <FilterButtonModel>[].obs;
  RxList<TransactionItemModel> transactions = <TransactionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeFilterButtons();
    _initializeTransactions();
  }

  void _initializeFilterButtons() {
    filterButtons.value = [
      FilterButtonModel(
        title: 'All'.obs,
        isSelected: true.obs,
      ),
      FilterButtonModel(
        title: 'GCash'.obs,
        isSelected: false.obs,
      ),
      FilterButtonModel(
        title: 'Maya'.obs,
        isSelected: false.obs,
      ),
      FilterButtonModel(
        title: 'GRABPAY'.obs,
        isSelected: false.obs,
      ),
      FilterButtonModel(
        title: 'USDT'.obs,
        isSelected: false.obs,
      ),
      FilterButtonModel(
        title: 'Online Banking'.obs,
        isSelected: false.obs,
      ),
      FilterButtonModel(
        title: 'System\nAdjustment'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void _initializeTransactions() {
    transactions.value = [
      TransactionItemModel(
        method: 'GCash'.obs,
        datetime: '2023-05-12  12:33:56'.obs,
        amount: '+₱200.00'.obs,
        status: 'Credited'.obs,
        statusColor: Color(0xFF18E014).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        datetime: '2023-05-12  12:33:56'.obs,
        amount: '+₱100.00'.obs,
        status: 'Cancelled'.obs,
        statusColor: Color(0xFFE014CB).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        datetime: '2023-05-12  12:33:56'.obs,
        amount: '+₱300.00'.obs,
        status: 'In progress'.obs,
        statusColor: Color(0xFFE07614).obs,
      ),
      TransactionItemModel(
        method: 'GCash'.obs,
        datetime: '2023-05-12  12:33:56'.obs,
        amount: '+₱260.00'.obs,
        status: 'Rejected'.obs,
        statusColor: Color(0xFFE01414).obs,
      ),
    ];
  }

  void onFilterButtonTap(int index) {
    for (int i = 0; i < filterButtons.length; i++) {
      filterButtons[i].isSelected?.value = (i == index);
    }
    filterButtons.refresh();
  }
}
