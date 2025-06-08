import 'package:get/get.dart';
import '../../../core/app_export.dart';

class AccountRecordTransactionHistoryModel {
  Rx<String>? title;
  Rx<String>? balanceAmount;
  Rx<String>? filterByText;

  AccountRecordTransactionHistoryModel({
    this.title,
    this.balanceAmount,
    this.filterByText,
  });
}
