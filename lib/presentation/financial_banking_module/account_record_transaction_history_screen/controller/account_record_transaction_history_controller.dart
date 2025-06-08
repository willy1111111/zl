import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/account_record_transaction_history_model.dart';
import '../models/transaction_item_model.dart';

class AccountRecordTransactionHistoryController extends GetxController {
  Rx<AccountRecordTransactionHistoryModel>
      accountRecordTransactionHistoryModel =
      AccountRecordTransactionHistoryModel().obs;

  RxList<TransactionItemModel> transactionItems = <TransactionItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeTransactionItems();
  }

  void _initializeTransactionItems() {
    transactionItems.value = [
      TransactionItemModel(
        icon: ImageConstant.imgVectorLightGreenA700.obs,
        transactionType: 'Deposits'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '+100.00'.obs,
        balance: '100.00'.obs,
        currencyIcon: ImageConstant.imgEllipse25.obs,
        currencySymbol: '₱'.obs,
        amountColor: Color(0xFF478A03).obs,
      ),
      TransactionItemModel(
        icon: ImageConstant.imgVectorLightGreenA700.obs,
        transactionType: 'Deposits'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '+50.00'.obs,
        balance: '100.00'.obs,
        currencyIcon: ImageConstant.imgEllipse25.obs,
        currencySymbol: '₱'.obs,
        amountColor: Color(0xFF478A03).obs,
      ),
      TransactionItemModel(
        icon: ImageConstant.imgVectorLightGreenA700.obs,
        transactionType: 'Deposits'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '+300.00'.obs,
        balance: '100.00'.obs,
        currencyIcon: ImageConstant.imgEllipse25.obs,
        currencySymbol: '₱'.obs,
        amountColor: Color(0xFF478A03).obs,
      ),
      TransactionItemModel(
        icon: ImageConstant.imgVectorLightGreenA700.obs,
        transactionType: 'Deposits'.obs,
        dateTime: '21:33 2023/06/08'.obs,
        amount: '+300.00'.obs,
        balance: '100.00'.obs,
        currencyIcon: ImageConstant.imgEllipse25.obs,
        currencySymbol: '₱'.obs,
        amountColor: Color(0xFF478A03).obs,
      ),
    ];
  }

  void onDepositFilterTap() {
    // Handle deposit filter tap action
  }

  void onDateRangeFilterTap() {
    // Handle date range filter tap action
  }
}
