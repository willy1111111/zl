import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [GCashDepositRecordHistoryScreen] screen with GetX.

class GCashDepositRecordHistoryModel {
  Rx<String>? title;
  Rx<int>? currentPage;
  Rx<int>? totalPages;

  GCashDepositRecordHistoryModel({
    this.title,
    this.currentPage,
    this.totalPages,
  });
}
