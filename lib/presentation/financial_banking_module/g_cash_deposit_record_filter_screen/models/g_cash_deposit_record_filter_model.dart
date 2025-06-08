import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GCashDepositRecordFilterModel {
  Rx<String>? selectedFilter;
  Rx<int>? selectedFilterIndex;
  Rx<String>? filterTitle;

  GCashDepositRecordFilterModel({
    this.selectedFilter,
    this.selectedFilterIndex,
    this.filterTitle,
  });
}
