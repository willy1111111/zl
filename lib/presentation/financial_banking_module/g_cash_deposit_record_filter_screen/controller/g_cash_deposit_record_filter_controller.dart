import 'package:get/get.dart';
import '../models/g_cash_deposit_record_filter_model.dart';
import '../models/deposit_record_item_model.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordFilterController extends GetxController {
  final selectedFilterIndex = 0.obs;
  final depositRecords = <DepositRecordItemModel>[].obs;
  final gCashDepositRecordFilterModel =
      Rx<GCashDepositRecordFilterModel?>(null);

  @override
  void onInit() {
    super.onInit();
    gCashDepositRecordFilterModel.value = GCashDepositRecordFilterModel();
    _initializeDepositRecords();
  }

  void selectFilterButton(int index) {
    selectedFilterIndex.value = index;
    _filterRecords(index);
  }

  void _initializeDepositRecords() {
    depositRecords.value = [
      DepositRecordItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱200.00'.obs,
        status: 'Credited'.obs,
        statusColor: Color(0xFF18E014).obs,
      ),
      DepositRecordItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱100.00'.obs,
        status: 'Cancelled'.obs,
        statusColor: Color(0xFFE014CB).obs,
      ),
      DepositRecordItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱300.00'.obs,
        status: 'In progress'.obs,
        statusColor: Color(0xFFE07614).obs,
      ),
      DepositRecordItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '+₱260.00'.obs,
        status: 'Rejected'.obs,
        statusColor: Color(0xFFE01414).obs,
      ),
    ];
  }

  void _filterRecords(int filterIndex) {
    switch (filterIndex) {
      case 0: // All
        _initializeDepositRecords();
        break;
      case 1: // Reviewed
        depositRecords.value = depositRecords
            .where((record) =>
                record.status?.value == 'Credited' ||
                record.status?.value == 'Cancelled')
            .toList();
        break;
      case 2: // Success
        depositRecords.value = depositRecords
            .where((record) => record.status?.value == 'Credited')
            .toList();
        break;
      case 3: // Processing
        depositRecords.value = depositRecords
            .where((record) => record.status?.value == 'In progress')
            .toList();
        break;
      case 4: // Closed
        depositRecords.value = depositRecords
            .where((record) => record.status?.value == 'Cancelled')
            .toList();
        break;
      case 5: // Fail
        depositRecords.value = depositRecords
            .where((record) => record.status?.value == 'Rejected')
            .toList();
        break;
      default:
        _initializeDepositRecords();
    }
  }
}
