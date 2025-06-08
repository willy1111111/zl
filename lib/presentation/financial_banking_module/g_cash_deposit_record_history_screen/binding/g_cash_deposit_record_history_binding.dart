import 'package:get/get.dart';
import '../controller/g_cash_deposit_record_history_controller.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GCashDepositRecordHistoryController());
  }
}
