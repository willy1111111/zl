import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [BettingRecordHistoryScreen] screen with GetX.
class BettingRecordHistoryModel {
  Rx<String> selectedDate = '2023-05-11'.obs;
  Rx<int> currentPage = 1.obs;
  Rx<bool> isLoading = false.obs;

  BettingRecordHistoryModel();
}
