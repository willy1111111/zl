import 'package:get/get.dart';
import '../../../core/app_export.dart';

class DepositRecordListModel {
  Rx<String>? selectedFilter;
  Rx<String>? selectedDateRange;
  RxInt? selectedTabIndex;

  DepositRecordListModel({
    this.selectedFilter,
    this.selectedDateRange,
    this.selectedTabIndex,
  });
}
