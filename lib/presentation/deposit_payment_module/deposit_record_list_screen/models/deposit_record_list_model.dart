import 'package:get/get.dart';

import '../../../core/app_export.dart';

/// This class is used in the [DepositRecordListScreen] screen with GetX.

class DepositRecordListModel {
  Rx<String> title = 'Deposit Record'.obs;
  RxInt selectedFilterIndex = 0.obs;
  RxInt selectedChipIndex = 0.obs;
  RxList<String> filterOptions = ['Order', 'Way', 'Today'].obs;
  RxList<String> chipOptions =
      ['All', 'Reviewed', 'Success', 'Processing', 'Closed', 'Fail'].obs;

  DepositRecordListModel();
}
