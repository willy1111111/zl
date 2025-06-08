import 'package:get/get.dart';
import '../controller/g_cash_deposit_record_list_controller.dart';
import '../../../core/app_export.dart';

class GCashDepositRecordListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GCashDepositRecordListController());
  }
}
