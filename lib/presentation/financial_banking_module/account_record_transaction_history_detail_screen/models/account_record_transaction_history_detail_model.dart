import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [AccountRecordTransactionHistoryDetailScreen] screen with GetX.
class AccountRecordTransactionHistoryDetailModel {
  Rx<String>? filterBy;
  Rx<String>? selectedFilter;
  Rx<String>? selectedDateRange;
  Rx<String>? balanceAmount;

  AccountRecordTransactionHistoryDetailModel({
    this.filterBy,
    this.selectedFilter,
    this.selectedDateRange,
    this.balanceAmount,
  });
}
