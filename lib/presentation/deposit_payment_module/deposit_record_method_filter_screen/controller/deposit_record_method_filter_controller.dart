import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/deposit_record_method_filter_model.dart';
import '../models/chip_view_model.dart';
import '../models/transaction_item_model.dart';
import '../../../core/app_export.dart';

class DepositRecordMethodFilterController extends GetxController {
  Rx<DepositRecordMethodFilterModel> depositRecordMethodFilterModel =
      DepositRecordMethodFilterModel().obs;

  RxList<ChipViewModel> chipOptions = <ChipViewModel>[].obs;
  RxList<TransactionItemModel> transactions = <TransactionItemModel>[].obs;
  RxInt selectedFilterIndex = 1.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeChipOptions();
    _initializeTransactions();
  }

  void _initializeChipOptions() {
    chipOptions.value = [
      ChipViewModel(title: 'All'.obs, isSelected: true.obs),
      ChipViewModel(title: 'GCash'.obs, isSelected: false.obs),
      ChipViewModel(title: 'Maya'.obs, isSelected: false.obs),
      ChipViewModel(title: 'GRABPAY'.obs, isSelected: false.obs),
      ChipViewModel(title: 'USDT'.obs, isSelected: false.obs),
      ChipViewModel(title: 'Online Banking'.obs, isSelected: false.obs),
      ChipViewModel(title: 'System Adjustment'.obs, isSelected: false.obs),
    ];
  }

  void _initializeTransactions() {
    transactions.value = [
      TransactionItemModel(
          paymentMethod: 'GCash'.obs,
          date: '2023-05-12  12:33:56'.obs,
          amount: '+₱200.00'.obs,
          status: 'Credited'.obs,
          statusColor: Color(0xFF18E014).obs),
      TransactionItemModel(
          paymentMethod: 'GCash'.obs,
          date: '2023-05-12  12:33:56'.obs,
          amount: '+₱100.00'.obs,
          status: 'Cancelled'.obs,
          statusColor: Color(0xFFE014CB).obs),
      TransactionItemModel(
          paymentMethod: 'GCash'.obs,
          date: '2023-05-12  12:33:56'.obs,
          amount: '+₱300.00'.obs,
          status: 'In progress'.obs,
          statusColor: Color(0xFFE07614).obs),
      TransactionItemModel(
          paymentMethod: 'GCash'.obs,
          date: '2023-05-12  12:33:56'.obs,
          amount: '+₱260.00'.obs,
          status: 'Rejected'.obs,
          statusColor: Color(0xFFE01414).obs),
    ];
  }

  void onChipSelected(int index) {
    for (int i = 0; i < chipOptions.length; i++) {
      chipOptions[i].isSelected!.value = (i == index);
    }
    chipOptions.refresh();
  }

  void onFilterPressed(int index) {
    selectedFilterIndex.value = index;
  }
}
