import '../../../core/app_export.dart';

class AccountRecordModel {
  Rx<String>? filterBy;
  Rx<String>? depositsFilter;
  Rx<String>? dateRangeFilter;
  Rx<String>? noDataMessage;
  Rx<String>? balanceAmount;

  AccountRecordModel({
    this.filterBy,
    this.depositsFilter,
    this.dateRangeFilter,
    this.noDataMessage,
    this.balanceAmount,
  });
}
