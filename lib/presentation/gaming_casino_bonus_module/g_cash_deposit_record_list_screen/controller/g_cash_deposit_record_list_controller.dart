import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/g_cash_deposit_record_list_model.dart';
import '../models/transaction_item_model.dart';

class GCashDepositRecordListController extends GetxController {
  Rx<GCashDepositRecordListModel> gCashDepositRecordListModelObj =
      GCashDepositRecordListModel().obs;

  RxList<TransactionItemModel> transactionList = <TransactionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeTransactionList();
  }

  void _initializeTransactionList() {
    transactionList.value = [
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '₱200.00'.obs,
        status: 'Credited'.obs,
        statusColor: Color(0xFF85D420).obs,
        arrowIcon: ImageConstant.imgStrokeBlueGray700.obs,
      ),
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '₱100.00'.obs,
        status: 'Cancelled'.obs,
        statusColor: Color(0xFFE014CB).obs,
        arrowIcon: ImageConstant.imgStrokeBlueGray700.obs,
      ),
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '₱300.00'.obs,
        status: 'In progress'.obs,
        statusColor: Color(0xFFE07614).obs,
        arrowIcon: ImageConstant.imgStrokeBlueGray700.obs,
      ),
      TransactionItemModel(
        paymentMethod: 'GCash'.obs,
        dateTime: '2023-05-12  12:33:56'.obs,
        amount: '₱260.00'.obs,
        status: 'Rejected'.obs,
        statusColor: Color(0xFFF65252).obs,
        arrowIcon: ImageConstant.imgStrokeBlueGray700.obs,
      ),
    ];
  }

  void onTransactionItemTap(TransactionItemModel model) {
    Get.toNamed(AppRoutes.gCashDepositRecordDetailScreen);
  }
}
