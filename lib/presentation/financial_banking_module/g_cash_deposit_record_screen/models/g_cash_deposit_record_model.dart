import 'package:get/get.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordModel {
  Rx<String>? title;
  Rx<bool>? hasFilterOptions;

  GCashDepositRecordModel({
    this.title,
    this.hasFilterOptions,
  });
}
