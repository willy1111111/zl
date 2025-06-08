import 'package:get/get.dart';
import '../controller/g_cash_deposit_record_controller.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GCashDepositRecordController());
  }
}
