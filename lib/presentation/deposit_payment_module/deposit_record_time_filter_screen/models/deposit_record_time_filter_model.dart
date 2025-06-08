import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [DepositRecordTimeFilterScreen] screen with GetX.

class DepositRecordTimeFilterModel {
  // Observable variables for reactive state management
  Rx<String> title = "Deposit Record".obs;
  Rx<bool> showBackButton = true.obs;
  Rx<bool> showStatusBar = true.obs;
  RxList<String> filterOptions = ['Order', 'Way', 'Today'].obs;
  RxList<String> timeFilters = ['Today', 'Yesterday', '7-days'].obs;
  Rx<String> dateRange = "2023-05-11~2023-05-14".obs;

  // Simple constructor with no parameters
  DepositRecordTimeFilterModel();
}
