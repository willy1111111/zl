import 'package:get/get.dart';
import '../controller/g_cash_deposit_record_filter_controller.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GCashDepositRecordFilterController());
  }
}
